/**
 * @file f5529ppy_bit.h
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

/// the width in characters of the gameplay area
#define MAP_WIDTH 40
/// the height in characters of the gameplay area
#define MAP_HEIGHT 30

/// the min time in ms between enemy spawns
#define MIN_ENEMY_TIME 3000/(MAP_HEIGHT-1)
/// the max time in ms between enemy spawns
#define MAX_ENEMY_TIME 12000/(MAP_HEIGHT-1)

/// the min speed of an enemy
#define MIN_ENEMY_RATE 1000
/// the max speed of an enemy
#define MAX_ENEMY_RATE 8000

/// the max amount of enemies that can be in the play field at any time
#define MAX_ENEMIES 3

/// game structure, stores the game's state at each frame
struct f5529_bit;

/// @typedef the enemy type, represents the state of enemies in the game
typedef struct enemy_t enemy_t;

/**
 * takes commands from subsystem. Only `reset` command is implemented.
 * @param argc argument count passed in from subsystem
 * @param *argv[] array of characters passed in from system
 */
void Callback(int argc, char * argv[]);

/**
 * handles user input.
 * @param keypress the keyboard character that was pressed
 */
void Receiver(char keypress);

/**
 * starts the game
 */
void Play(void);

/// prints out the game instructions
void Help(void);

/**
 * updates an enemy to its next state
 * @param e enemy
 */
void UpdateEnemy(enemy_t * e);

/**
 * spawns a new enemy
 * @param val the value of the new enemy to be spawned
 */
void SendEnemy(uint8_t val);

/// stops the game and exits to subsystem
void GameOver(void);

/**
 * removes an enemy from the game
 * @param e enemy to be deleted
 */
void DeleteEnemy(enemy_t * e);

/// increments the game score and plays a bell
void ScorePoint(void);

/// updates the bit display characters to show the value of the game bits
void UpdateCharBits();

/// displays the current game bits on the game area
void PrintBits(void);

/// checks if any enemies have values matching the game's bits and kills them
void CheckKill(void);

/// initilizes the game instance
void F5529PPY_BIT_Init(void);
