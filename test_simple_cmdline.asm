    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 8

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""Hello\n""
    # Found 1 string literals

    # ======================================
    #   Collecting Global and Static Variables
    # ======================================
    # Allocated space for 0 global/static variables

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i1
    # Block B2: i2-i2
    # Block B3: i3-i6
    # Block B4: i7-i7

.data
    # String Literals
str_0: .asciiz "Hello\n"

    # Global and Static Variables
    # (no global or static variables)

.text
.globl main

    # ======================================
    # === B1_i0_i1 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B1 ===
    # Instr i1 Next-Use:
    # Instr i0 Next-Use:
    #   printf_cp1_variadic -> N/A
    # === End of Next-Use Computation for Block B1 ===

    # Next-use information computed
    # TAC 0: 1: function begin : printf_cp1_variadic
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
printf_cp1_variadic:
    # Function: printf_cp1_variadic
    # === Function Prologue for printf_cp1_variadic ===
    # Frame size: 52 bytes
    addiu $sp, $sp, -52
    # Allocate 52 bytes (8 for $ra+$fp, 52 for locals/temps)
    sw $ra, 48($sp)
    # Save return address at 56($sp)
    sw $fp, 44($sp)
    # Save old frame pointer at 52($sp)
    addiu $fp, $sp, 44
    # Set new frame pointer (points to saved old $fp)
    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_c_printf_cp1_variadic_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_c_printf_cp1_variadic_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: return 
I2:
    # --- Register Descriptor ---
    # $a0: [v_c_printf_cp1_variadic_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return (void)


    # ======================================
    # === B2_i2_i2 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B2 ===
    # Instr i2 Next-Use:
    #   printf_cp1_variadic -> N/A
    # === End of Next-Use Computation for Block B2 ===

    # Next-use information computed
    # TAC 2: 3: end function printf_cp1_variadic
I3:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for printf_cp1_variadic ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 8
    # Deallocate saved $ra and $fp (8 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: printf_cp1_variadic


    # ======================================
    # === B3_i3_i6 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i6 Next-Use:
    # Instr i5 Next-Use:
    #   #t1 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i4 Next-Use:
    # Instr i3 Next-Use:
    #   main_i_cp2 -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 3: 4: function begin : main_i_cp2
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main_i_cp2:
    # Function: main_i_cp2
    # === Function Prologue for main_i_cp2 ===
    # Frame size: 56 bytes
    addiu $sp, $sp, -56
    # Allocate 56 bytes (8 for $ra+$fp, 56 for locals/temps)
    sw $ra, 52($sp)
    # Save return address at 60($sp)
    sw $fp, 48($sp)
    # Save old frame pointer at 56($sp)
    addiu $fp, $sp, 48
    # Set new frame pointer (points to saved old $fp)
    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_argc_main_i_cp2_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_argc_main_i_cp2_s2) in $a0
    # DEBUG: Parameter 1 (v_argv_main_i_cp2_s2) at 12($fp)
    # DEBUG: Pointer/Reference parameter 1 (v_argv_main_i_cp2_s2, ptr_level=2) in $a1
    # === End Parameter Initialization ===


    # TAC 4: 5: param "Hello\n"
I5:
    # --- Register Descriptor ---
    # $a0: [v_argc_main_i_cp2_s2]
    # $a1: [v_argv_main_i_cp2_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_argc_main_i_cp2_s2: [$a0, memory:8($fp)]
    # v_argv_main_i_cp2_s2: [$a1, memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "Hello\n"
    # DEBUG: Collected parameter #1: "Hello\n"

    # TAC 5: 6: #t1 = call printf_cp1_variadic, 1
I6:
    # --- Register Descriptor ---
    # $a0: [v_argc_main_i_cp2_s2]
    # $a1: [v_argv_main_i_cp2_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_argc_main_i_cp2_s2: [$a0, memory:8($fp)]
    # v_argv_main_i_cp2_s2: [$a1, memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_argc_main_i_cp2_s2 from $a0 to 8($fp)
    # DEBUG: Spilled v_argv_main_i_cp2_s2 from $a1 to 12($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 0 arguments
    # DEBUG: format_param = '"Hello\n"', first char = 34
    # Load format string literal address
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    sw $a0, 8($fp)
    sw $a1, 12($fp)
    la $a0, str_0
    jal __lib_printf

    # TAC 6: 7: return 0
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_argc_main_i_cp2_s2: [memory:8($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B4_i7_i7 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i7 Next-Use:
    #   main_i_cp2 -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 7: 8: end function main_i_cp2
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_argc_main_i_cp2_s2: [memory:8($fp)]
    # v_argv_main_i_cp2_s2: [memory:12($fp)]
    # v_c_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for main_i_cp2 ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 8
    # Deallocate saved $ra and $fp (8 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: main_i_cp2


    # End of code
    # ======================================
    #   Including Runtime Library Functions
    # ======================================

#==============================================================================
# RUNTIME LIBRARY FUNCTIONS
# The following functions are imported from the runtime library
#==============================================================================

#==============================================================================
# END OF RUNTIME LIBRARY
#==============================================================================

