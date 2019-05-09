/**
 * @file f5529ppy_bit.c
 * @author John McAvoy
 * @date 8 May 2019
 *
 * Provides the f5529_bit game state logic
 */

#include "project_settings.h"
#include "random_int.h"
#include "stddef.h"
#include "strings.h"
#include "game.h"
#include "timing.h"
#include "task.h"
#include "terminal.h"
#include "random_int.h"
#include "f5529ppy_bit.h"

/// game structure, stores the game's state at each frame
struct f5529_bit_t {
    uint8_t bits; ///< bits to be flipped
    int16_t score; ///< score for the round
    uint8_t id; ///< ID of game
    char b0; ///< the character representation of bit0 of `bits`, either a '0' or a '1'
    char b1; ///< the character representation of bit1 of `bits`, either a '0' or a '1'
    char b2; ///< the character representation of bit2 of `bits`, either a '0' or a '1'
    char b3; ///< the character representation of bit3 of `bits`, either a '0' or a '1'
    char b4; ///< the character representation of bit4 of `bits`, either a '0' or a '1'
    char b5; ///< the character representation of bit5 of `bits`, either a '0' or a '1'
    char b6; ///< the character representation of bit6 of `bits`, either a '0' or a '1'
    char b7; ///< the character representation of bit7 of `bits`, either a '0' or a '1'
} f5529_bit_t;

/// @typedef the enemy type, represents the state of enemies in the game
typedef struct enemy_t {
    uint8_t val; ///< the hexadecimal value of the enemy
    uint16_t x; ///< the x position of the enemy
    uint16_t y; ///< the y position of the enemy
    uint8_t status; ///< used to track whether the enemy is active or destroyed. 1 is active, 0 the enemy is destroyed and removed next frame
} enemy_t;

/// array of enemeies currently in play
enemy_t enemies[MAX_ENEMIES];

/// f5529ppy_bit game instance
struct f5529_bit_t game;

void F5529PPY_BIT_Init(void) {
    // Register the module with the game system and give it the name "f5529_bit"
    game.id = Game_Register("f5529ppy_bit", "flippy bit", Play, Help);
    // Register a callback with the game system.
    // this is only needed if your game supports more than "play", "help" and "highscores"
    Game_RegisterCallback(game.id, Callback);
}

void Help(void) {
    Game_Printf("Use 1 thru 0 num to flip bits\r\n";
}

void Callback(int argc, char * argv[]) {
    // "play" and "help" are called automatically so just process "reset" here
    if(argc == 0) Game_Log(game.id, "too few args");
    if(strcasecmp(argv[0],"reset") == 0) {
        // reset scores
        game.score = 0;
        Game_Log(game.id, "Scores reset");
    } else Game_Log(game.id, "command not supported");
}

void Play(void) {
    volatile uint8_t i;
    // clear the screen
    Game_ClearScreen();
    // draw a box around our map
    Game_DrawRect(0, 0, MAP_WIDTH, MAP_HEIGHT);

    // initialize game variables
    for(i = 0; i < MAX_ENEMIES; i++) enemies[i].status = 0;
    game.x = MAP_WIDTH / 2;
    game.c = ' ';
    game.score = 0;
    game.bits = 0;
    UpdateCharBits();
    //Game_CharXY(game.c, game.x, MAP_HEIGHT - 1);
    Game_RegisterPlayer1Receiver(Receiver);

    Game_HideCursor();
    // send first enemy in 10 seconds
    // period is 0 because the task is rescheduled new each time at random intervals
    Task_Schedule(SendEnemy, 0, 10000, 0);
    Task_Schedule(CheckKill, 0, 100, 0);
}

void Receiver(char keypress) {
    switch (c) {
    case '1':
        game.bits ^= 1 << 7;
        break;
    case '2':
        game.bits ^= 1 << 6;
        break;
    case '3':
        game.bits ^= 1 << 5;
        break;
    case '4':
        game.bits ^= 1 << 4;
        break;
    case '5':
        game.bits ^= 1 << 3;
        break;
    case '6':
        game.bits ^= 1 << 2;
        break;
    case '7':
        game.bits ^= 1 << 1;
        break;
    case '8':
        game.bits ^= 1 << 0;
        break;
    }
    UpdateCharBits();
    PrintBits();
}

void SendEnemy(uint8_t val) {
    char x;
    volatile uint8_t i;
    enemy_t * enemy = 0;
    uint16_t down_period, right_period;
    // get random starting x location
    x = random_int(1, MAP_WIDTH / 2);
    // get random time for moving down
    down_period = random_int(MIN_ENEMY_TIME, MAX_ENEMY_TIME);
    // get random time for moving right such that we don't go out of bounds
    // min value is t*(MAP_HEIGHT-1) / (MAP_WIDTH - 1 - x)
    right_period = 0;// down_period * (MAP_HEIGHT - 1) / (MAP_WIDTH - 1 - x);
    // get value between the min and 4x min
    right_period = 0 ; //random_int(right_period, right_period * 4);
    // find unused enemy object
    for(i = 0; i < MAX_ENEMIES; i++) if(enemies[i].status == 0) enemy = &enemies[i];
    if(enemy) {
        enemy->status = 1;
        enemy->x = x;
        enemy->val = random_int(0x00, 0xff);
        enemy->y = 1;
        // use the task scheduler to move the char down and right at the calculated
        // period
        Task_Schedule((task_t) UpdateEnemy, enemy, down_period, down_period);
        Game_CharXY('x', x, 1);
    }
    // schedule next enemy to come between min and max enemy rate
    // since a random time is desired the period is 0 so the task will be done when it us run
    // and a new task will be created at a different random time
    Task_Schedule(SendEnemy, 0, random_int(MIN_ENEMY_RATE, MAX_ENEMY_RATE), 0);
}

void UpdateEnemy(enemy_t * e) {
    // first make sure enemy can move down
    if (e->y < MAP_HEIGHT - 1) {
        // clear location
        Game_CharXY(' ', e->x, e->y);
        Game_CharXY(' ', e->x+1, e->y);
        // update y position
        e->y++;
        // re-print
        char msb;
        switch((e->val)>>4) {
        case 0x0:
            msb = '0';
            break;
        case 0x1:
            msb = '1';
            break;
        case 0x2:
            msb = '2';
            break;
        case 0x3:
            msb = '3';
            break;
        case 0x4:
            msb = '4';
            break;
        case 0x5:
            msb = '5';
            break;
        case 0x6:
            msb = '6';
            break;
        case 0x7:
            msb = '7';
            break;
        case 0x8:
            msb = '8';
            break;
        case 0x9:
            msb = '9';
            break;
        case 0xa:
            msb = 'a';
            break;
        case 0xb:
            msb = 'b';
            break;
        case 0xc:
            msb = 'c';
            break;
        case 0xd:
            msb = 'd';
            break;
        case 0xe:
            msb = 'e';
            break;
        case 0xf:
            msb = 'f';
            break;
        }

        char lsb;
        switch((e->val) & 0x0f) {
        case 0x0:
            lsb = '0';
            break;
        case 0x1:
            lsb = '1';
            break;
        case 0x2:
            lsb = '2';
            break;
        case 0x3:
            lsb = '3';
            break;
        case 0x4:
            lsb = '4';
            break;
        case 0x5:
            lsb = '5';
            break;
        case 0x6:
            lsb = '6';
            break;
        case 0x7:
            lsb = '7';
            break;
        case 0x8:
            lsb = '8';
            break;
        case 0x9:
            lsb = '9';
            break;
        case 0xa:
            lsb = 'a';
            break;
        case 0xb:
            lsb = 'b';
            break;
        case 0xc:
            lsb = 'c';
            break;
        case 0xd:
            lsb = 'd';
            break;
        case 0xe:
            lsb = 'e';
            break;
        case 0xf:
            lsb = 'f';
            break;
        }

        Game_CharXY(msb, e->x, e->y);
        Game_CharXY(lsb, e->x+1, e->y);
        CheckKill();
    } else {
        GameOver();
    }
}

void ScorePoint(void) {
    game.score++;
    // sound the alarm
    Game_Bell();
}

void DeleteEnemy(enemy_t * e) {
    // set status to 0
    if(e) e->status = 0;
    // remove the tasks used to move the enemy
    Task_Remove((task_t) UpdateEnemy, e);
}

void GameOver(void) {
    // clean up all scheduled tasks
    DeleteEnemy(0);
    Task_Remove(SendEnemy, 0);
    // if a controller was used then remove the callbacks
    // set cursor below bottom of map
    //Game_CharXY('\r', 0, MAP_HEIGHT + 1);
    // show score
    Game_Printf("Game Over! Final score: %d\r\n", game.score);
    // unregister the receiver used to run the game
    Game_UnregisterPlayer1Receiver(Receiver);
    // show cursor (it was hidden at the beginning
    Game_ShowCursor();
    Game_GameOver();
}

void UpdateCharBits() {
    game.b7 = (game.bits & (1<<7)) ? '1' : '0';
    game.b6 = (game.bits & (1<<6)) ? '1' : '0';
    game.b5 = (game.bits & (1<<5)) ? '1' : '0';
    game.b4 = (game.bits & (1<<4)) ? '1' : '0';
    game.b3 = (game.bits & (1<<3)) ? '1' : '0';
    game.b2 = (game.bits & (1<<2)) ? '1' : '0';
    game.b1 = (game.bits & (1<<1)) ? '1' : '0';
    game.b0 = (game.bits & (1<<0)) ? '1' : '0';
}

void PrintBits(void) {
    Game_CharXY(game.b7, 0, MAP_HEIGHT + 1);
    Game_CharXY(game.b6, 4, MAP_HEIGHT + 1);
    Game_CharXY(game.b5, 8, MAP_HEIGHT + 1);
    Game_CharXY(game.b4, 12, MAP_HEIGHT + 1);
    Game_CharXY(game.b3, 16, MAP_HEIGHT + 1);
    Game_CharXY(game.b2, 20, MAP_HEIGHT + 1);
    Game_CharXY(game.b1, 24, MAP_HEIGHT + 1);
    Game_CharXY(game.b0, 28, MAP_HEIGHT + 1);
}

void CheckKill(void) {
    for(uint16_t i = 0; i < MAX_ENEMIES; i++) {
        enemy_t *e = &enemies[i];
        if(e->val == game.bits) {
            DeleteEnemy(e);
            ScorePoint();
            Task_Remove((task_t)MoveDownEnemy, e);
        }
    }
}
