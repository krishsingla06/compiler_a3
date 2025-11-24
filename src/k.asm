    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 16

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""Result: %d\n""
    # Found 1 string literals

    # ======================================
    #   Collecting Global and Static Variables
    # ======================================
    # Allocated space for 0 global/static variables

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i1
    # Block B2: i2-i4
    # Block B3: i5-i5
    # Block B4: i6-i14
    # Block B5: i15-i15

.data
    # String Literals
str_0: .asciiz "Result: %d\n"

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
    #   printf_cp1_variadic -> N/A
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
    # DEBUG: Parameter 0 (v_fmt_printf_cp1_variadic_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_fmt_printf_cp1_variadic_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: end function printf_cp1_variadic
I2:
    # --- Register Descriptor ---
    # $a0: [v_fmt_printf_cp1_variadic_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fmt_printf_cp1_variadic_s2: [$a0, memory:8($fp)]
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
    # === B2_i2_i4 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B2 ===
    # Instr i4 Next-Use:
    #   #t1 -> N/A
    # Instr i3 Next-Use:
    #   #t1 -> N/A
    #   v_a_add_i_i_s2 -> N/A
    #   v_b_add_i_i_s2 -> N/A
    # Instr i2 Next-Use:
    #   add_i_i -> N/A
    # === End of Next-Use Computation for Block B2 ===

    # Next-use information computed
    # TAC 2: 3: function begin : add_i_i
I3:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
add_i_i:
    # Function: add_i_i
    # === Function Prologue for add_i_i ===
    # Frame size: 60 bytes
    addiu $sp, $sp, -60
    # Allocate 60 bytes (8 for $ra+$fp, 60 for locals/temps)
    sw $ra, 56($sp)
    # Save return address at 64($sp)
    sw $fp, 52($sp)
    # Save old frame pointer at 60($sp)
    addiu $fp, $sp, 52
    # Set new frame pointer (points to saved old $fp)
    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_a_add_i_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_a_add_i_i_s2) in $a0
    # DEBUG: Parameter 1 (v_b_add_i_i_s2) at 12($fp)
    # DEBUG: Integer parameter 1 (v_b_add_i_i_s2) in $a1
    # === End Parameter Initialization ===


    # TAC 3: 4: #t1 = v_a_add_i_i_s2 + v_b_add_i_i_s2
I4:
    # --- Register Descriptor ---
    # $a0: [v_a_add_i_i_s2]
    # $a1: [v_b_add_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_add_i_i_s2: [$a0, memory:8($fp)]
    # v_b_add_i_i_s2: [$a1, memory:12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t1 = v_a_add_i_i_s2 add v_b_add_i_i_s2
    # DEBUG: v_a_add_i_i_s2 in $a0
    # DEBUG: v_b_add_i_i_s2 in $a1
    # DEBUG: #t1 = result in $t0 (dirty)
    add $t0, $a0, $a1

    # TAC 4: 5: return #t1
I5:
    # --- Register Descriptor ---
    # $a0: [v_a_add_i_i_s2]
    # $a1: [v_b_add_i_i_s2]
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_a_add_i_i_s2: [$a0, memory:8($fp)]
    # v_b_add_i_i_s2: [$a1, memory:12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t1 from $t0 to memory at -4($fp)
    # === Spilling all dirty registers before return ===
    # return #t1
    # DEBUG: #t1 in $t0
    # DEBUG: Moved return value to $v0
    sw $t0, -4($fp)
    move $v0, $t0


    # ======================================
    # === B3_i5_i5 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i5 Next-Use:
    #   add_i_i -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 5: 6: end function add_i_i
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for add_i_i ===
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
    # End of function: add_i_i


    # ======================================
    # === B4_i6_i14 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i14 Next-Use:
    # Instr i13 Next-Use:
    #   #t3 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i12 Next-Use:
    #   v_result_main_s2 -> N/A
    # Instr i11 Next-Use:
    # Instr i10 Next-Use:
    #   #t2 -> N/A
    #   v_result_main_s2 -> N/A
    # Instr i9 Next-Use:
    #   #t2 -> N/A
    #   add_i_i -> N/A
    # Instr i8 Next-Use:
    # Instr i7 Next-Use:
    # Instr i6 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 6: 7: function begin : main
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 56 bytes
    addiu $sp, $sp, -56
    # Allocate 56 bytes (8 for $ra+$fp, 56 for locals/temps)
    sw $ra, 52($sp)
    # Save return address at 60($sp)
    sw $fp, 48($sp)
    # Save old frame pointer at 56($sp)
    addiu $fp, $sp, 48
    # Set new frame pointer (points to saved old $fp)

    # TAC 7: 8: param 3
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 3
    # DEBUG: Collected parameter #1: 3

    # TAC 8: 9: param 4
I9:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 4
    # DEBUG: Collected parameter #2: 4

    # TAC 9: 10: #t2 = call add_i_i, 2
I10:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call add_i_i with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # DEBUG: Allocate 8 bytes for 2 parameters + $ra/$fp
    # DEBUG: Loaded constant param 0 = 3
    # DEBUG: Stored param 0 on stack at 0($sp)
    # DEBUG: Copied param 0 to $a0
    # DEBUG: Loaded constant param 1 = 4
    # DEBUG: Stored param 1 on stack at 4($sp)
    # DEBUG: Copied param 1 to $a1
    # DEBUG: Called add_i_i
    # DEBUG: Deallocate 8 bytes of parameter space
    # DEBUG: Return value from $v0 to $t0
    # DEBUG: #t2 = return value in $t0 (dirty)
    addiu $sp, $sp, -8
    li $t0, 3
    sw $t0, 0($sp)
    move $a0, $t0
    li $t0, 4
    sw $t0, 4($sp)
    move $a1, $t0
    jal add_i_i
    addiu $sp, $sp, 8
    move $t0, $v0

    # TAC 10: 11: v_result_main_s2 = #t2
I11:
    # --- Register Descriptor ---
    # $t0: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_result_main_s2 = #t2
    # DEBUG: #t2 already in $t0
    # DEBUG: v_result_main_s2 now also in $t0 (dirty)
    # DEBUG: Saved v_result_main_s2 to memory at -4($fp)
    sw $t0, -4($fp)

    # TAC 11: 12: param "Result: %d\n"
I12:
    # --- Register Descriptor ---
    # $t0: [#t2, v_result_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_result_main_s2: [$t0, memory:-4($fp)]
    # --- End Storage Descriptor ---
    # param "Result: %d\n"
    # DEBUG: Collected parameter #1: "Result: %d\n"

    # TAC 12: 13: param v_result_main_s2
I13:
    # --- Register Descriptor ---
    # $t0: [#t2, v_result_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_result_main_s2: [$t0, memory:-4($fp)]
    # --- End Storage Descriptor ---
    # param v_result_main_s2
    # DEBUG: Collected parameter #2: v_result_main_s2

    # TAC 13: 14: #t3 = call printf_cp1_variadic, 2
I14:
    # --- Register Descriptor ---
    # $t0: [#t2, v_result_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [$t0]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_result_main_s2: [$t0, memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t2 from $t0 to -8($fp)
    # DEBUG: Spilled v_result_main_s2 from $t0 to -4($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"Result: %d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_result_main_s2
    # DEBUG: Loaded v_result_main_s2 from memory at -4($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    sw $t0, -8($fp)
    sw $t0, -4($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 14: 15: return 0
I15:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_result_main_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B5_i15_i15 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i15 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B5 ===

    # Next-use information computed
    # TAC 15: 16: end function main
I16:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-4($fp)]
    # #t2: [memory:-8($fp)]
    # v_a_add_i_i_s2: [memory:8($fp)]
    # v_b_add_i_i_s2: [memory:12($fp)]
    # v_fmt_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_result_main_s2: [memory:-4($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for main ===
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
    # End of function: main


    # End of code
    # ======================================
    #   Including Runtime Library Functions
    # ======================================

#==============================================================================
# RUNTIME LIBRARY FUNCTIONS
# The following functions are imported from the runtime library
#==============================================================================

#==============================================================================
__lib_printf:
    # Save registers
    addiu $sp, $sp, -16
    sw $ra, 12($sp)
    sw $fp, 8($sp)
    sw $a0, 4($sp)  # Save format string
    sw $s0, 0($sp)  # Save $s0
    move $fp, $sp
    
    # Format string is in $a0 (already loaded by caller)
    # We'll save it and work with it
    move $s0, $a0  # $s0 = format string pointer
    
    # Parameter pointer - variadic args would be on stack after return address
    # For now, we'll just handle the format string without additional args
    addiu $t0, $fp, 16  # Points to where variadic args would be on stack
    
printf_loop:
    # Load next character from format string
    lb $t1, 0($s0)
    beqz $t1, printf_end
    
    # Check if it's a format specifier
    li $t2, 37  # ASCII '%'
    bne $t1, $t2, printf_print_char
    
    # It's a format specifier, check next character
    addiu $s0, $s0, 1
    lb $t1, 0($s0)
    beqz $t1, printf_end
    
    # Check format type
    li $t2, 100  # ASCII 'd' - integer
    beq $t1, $t2, printf_int
    
    li $t2, 115  # ASCII 's' - string
    beq $t1, $t2, printf_string
    
    li $t2, 99   # ASCII 'c' - char
    beq $t1, $t2, printf_char
    
    li $t2, 102  # ASCII 'f' - float
    beq $t1, $t2, printf_float
    
    # Unknown format, just print the %
    li $a0, 37
    li $v0, 11
    syscall
    j printf_continue

printf_int:
    # Print integer
    lw $a0, 0($t0)
    addiu $t0, $t0, 4  # Move to next parameter
    li $v0, 1
    syscall
    j printf_continue

printf_string:
    # Print string
    lw $a0, 0($t0)
    addiu $t0, $t0, 4  # Move to next parameter
    li $v0, 4
    syscall
    j printf_continue

printf_char:
    # Print character
    lw $a0, 0($t0)
    addiu $t0, $t0, 4  # Move to next parameter
    li $v0, 11
    syscall
    j printf_continue

printf_float:
    # Print float
    l.s $f12, 0($t0)
    addiu $t0, $t0, 4  # Move to next parameter
    li $v0, 2
    syscall
    j printf_continue

printf_print_char:
    # Print regular character
    move $a0, $t1
    li $v0, 11
    syscall

printf_continue:
    # Move to next character in format string
    addiu $s0, $s0, 1
    j printf_loop

printf_end:
    # Restore registers
    lw $s0, 0($sp)
    lw $a0, 4($sp)
    lw $fp, 8($sp)
    lw $ra, 12($sp)
    addiu $sp, $sp, 16
    jr $ra


#==============================================================================
# END OF RUNTIME LIBRARY
#==============================================================================

