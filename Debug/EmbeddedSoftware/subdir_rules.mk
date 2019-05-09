################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
EmbeddedSoftware/buffer.obj: /home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/src/buffer.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/bin/cl430" -vmspx --data_model=restricted --use_hw_mpy=F5 --include_path="/opt/ccstudio/ccsv8/ccs_base/msp430/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/04/f5529ppy_bit" --include_path="/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/hal/MSP430/MSP430F5529" --advice:power=all --define=__MSP430F5529__ -g --printf_support=minimal --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --preproc_with_compile --preproc_dependency="EmbeddedSoftware/$(basename $(<F)).d_raw" --obj_directory="EmbeddedSoftware" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '

EmbeddedSoftware/buffer_printf.obj: /home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/src/buffer_printf.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/bin/cl430" -vmspx --data_model=restricted --use_hw_mpy=F5 --include_path="/opt/ccstudio/ccsv8/ccs_base/msp430/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/04/f5529ppy_bit" --include_path="/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/hal/MSP430/MSP430F5529" --advice:power=all --define=__MSP430F5529__ -g --printf_support=minimal --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --preproc_with_compile --preproc_dependency="EmbeddedSoftware/$(basename $(<F)).d_raw" --obj_directory="EmbeddedSoftware" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '

EmbeddedSoftware/game.obj: /home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/src/games/game.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/bin/cl430" -vmspx --data_model=restricted --use_hw_mpy=F5 --include_path="/opt/ccstudio/ccsv8/ccs_base/msp430/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/04/f5529ppy_bit" --include_path="/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/hal/MSP430/MSP430F5529" --advice:power=all --define=__MSP430F5529__ -g --printf_support=minimal --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --preproc_with_compile --preproc_dependency="EmbeddedSoftware/$(basename $(<F)).d_raw" --obj_directory="EmbeddedSoftware" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '

EmbeddedSoftware/hal_uart.obj: /home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/hal/MSP430/MSP430F5529/hal_uart.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/bin/cl430" -vmspx --data_model=restricted --use_hw_mpy=F5 --include_path="/opt/ccstudio/ccsv8/ccs_base/msp430/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/04/f5529ppy_bit" --include_path="/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/hal/MSP430/MSP430F5529" --advice:power=all --define=__MSP430F5529__ -g --printf_support=minimal --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --preproc_with_compile --preproc_dependency="EmbeddedSoftware/$(basename $(<F)).d_raw" --obj_directory="EmbeddedSoftware" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '

EmbeddedSoftware/list.obj: /home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/src/list.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/bin/cl430" -vmspx --data_model=restricted --use_hw_mpy=F5 --include_path="/opt/ccstudio/ccsv8/ccs_base/msp430/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/04/f5529ppy_bit" --include_path="/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/hal/MSP430/MSP430F5529" --advice:power=all --define=__MSP430F5529__ -g --printf_support=minimal --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --preproc_with_compile --preproc_dependency="EmbeddedSoftware/$(basename $(<F)).d_raw" --obj_directory="EmbeddedSoftware" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '

EmbeddedSoftware/random_int.obj: /home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/src/random_int.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/bin/cl430" -vmspx --data_model=restricted --use_hw_mpy=F5 --include_path="/opt/ccstudio/ccsv8/ccs_base/msp430/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/04/f5529ppy_bit" --include_path="/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/hal/MSP430/MSP430F5529" --advice:power=all --define=__MSP430F5529__ -g --printf_support=minimal --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --preproc_with_compile --preproc_dependency="EmbeddedSoftware/$(basename $(<F)).d_raw" --obj_directory="EmbeddedSoftware" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '

EmbeddedSoftware/subsystem.obj: /home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/src/subsystem.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/bin/cl430" -vmspx --data_model=restricted --use_hw_mpy=F5 --include_path="/opt/ccstudio/ccsv8/ccs_base/msp430/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/04/f5529ppy_bit" --include_path="/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/hal/MSP430/MSP430F5529" --advice:power=all --define=__MSP430F5529__ -g --printf_support=minimal --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --preproc_with_compile --preproc_dependency="EmbeddedSoftware/$(basename $(<F)).d_raw" --obj_directory="EmbeddedSoftware" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '

EmbeddedSoftware/task.obj: /home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/src/task.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/bin/cl430" -vmspx --data_model=restricted --use_hw_mpy=F5 --include_path="/opt/ccstudio/ccsv8/ccs_base/msp430/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/04/f5529ppy_bit" --include_path="/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/hal/MSP430/MSP430F5529" --advice:power=all --define=__MSP430F5529__ -g --printf_support=minimal --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --preproc_with_compile --preproc_dependency="EmbeddedSoftware/$(basename $(<F)).d_raw" --obj_directory="EmbeddedSoftware" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '

EmbeddedSoftware/terminal.obj: /home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/src/terminal.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/bin/cl430" -vmspx --data_model=restricted --use_hw_mpy=F5 --include_path="/opt/ccstudio/ccsv8/ccs_base/msp430/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/04/f5529ppy_bit" --include_path="/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/hal/MSP430/MSP430F5529" --advice:power=all --define=__MSP430F5529__ -g --printf_support=minimal --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --preproc_with_compile --preproc_dependency="EmbeddedSoftware/$(basename $(<F)).d_raw" --obj_directory="EmbeddedSoftware" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '

EmbeddedSoftware/timing.obj: /home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/src/timing.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/bin/cl430" -vmspx --data_model=restricted --use_hw_mpy=F5 --include_path="/opt/ccstudio/ccsv8/ccs_base/msp430/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/04/f5529ppy_bit" --include_path="/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/hal/MSP430/MSP430F5529" --advice:power=all --define=__MSP430F5529__ -g --printf_support=minimal --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --preproc_with_compile --preproc_dependency="EmbeddedSoftware/$(basename $(<F)).d_raw" --obj_directory="EmbeddedSoftware" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '

EmbeddedSoftware/uart.obj: /home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/src/uart.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/bin/cl430" -vmspx --data_model=restricted --use_hw_mpy=F5 --include_path="/opt/ccstudio/ccsv8/ccs_base/msp430/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/04/f5529ppy_bit" --include_path="/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/hal/MSP430/MSP430F5529" --advice:power=all --define=__MSP430F5529__ -g --printf_support=minimal --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --preproc_with_compile --preproc_dependency="EmbeddedSoftware/$(basename $(<F)).d_raw" --obj_directory="EmbeddedSoftware" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '


