################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/bin/cl430" -vmspx --data_model=restricted --use_hw_mpy=F5 --include_path="/opt/ccstudio/ccsv8/ccs_base/msp430/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/04/f5529ppy_bit" --include_path="/opt/ccstudio/ccsv8/tools/compiler/ti-cgt-msp430_18.1.4.LTS/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/include" --include_path="/home/john/Documents/School_Docs/embedded_software_design/labs/embedded-software/hal/MSP430/MSP430F5529" --advice:power=all --define=__MSP430F5529__ -g --printf_support=minimal --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU23 --silicon_errata=CPU40 --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '


