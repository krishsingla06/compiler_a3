    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 23

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""a: %d\n""
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
    # Block B3: i3-i4
    # Block B4: i5-i5
    # Block B5: i6-i7
    # Block B6: i8-i8
    # Block B7: i9-i9
    # Block B8: i10-i11
    # Block B9: i12-i12
    # Block B10: i13-i13
    # Block B11: i14-i14
    # Block B12: i15-i20
    # Block B13: i21-i21
    # Block B14: i22-i22

.data
    # String Literals
str_0: .asciiz "a: %d\n"

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
    # DEBUG: Parameter 0 (v_s_printf_cp1_variadic_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_s_printf_cp1_variadic_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: return 
I2:
    # --- Register Descriptor ---
    # $a0: [v_s_printf_cp1_variadic_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_s_printf_cp1_variadic_s2: [$a0, memory:8($fp)]
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
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
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
    # === B3_i3_i4 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i4 Next-Use:
    # Instr i3 Next-Use:
    #   scanf_cp1_variadic -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 3: 4: function begin : scanf_cp1_variadic
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
scanf_cp1_variadic:
    # Function: scanf_cp1_variadic
    # === Function Prologue for scanf_cp1_variadic ===
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
    # DEBUG: Parameter 0 (v_s_scanf_cp1_variadic_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_s_scanf_cp1_variadic_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 4: 5: return 
I5:
    # --- Register Descriptor ---
    # $a0: [v_s_scanf_cp1_variadic_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return (void)


    # ======================================
    # === B4_i5_i5 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i5 Next-Use:
    #   scanf_cp1_variadic -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 5: 6: end function scanf_cp1_variadic
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for scanf_cp1_variadic ===
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
    # End of function: scanf_cp1_variadic


    # ======================================
    # === B5_i6_i7 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i7 Next-Use:
    #   v_a_main_s2 -> N/A
    # Instr i6 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B5 ===

    # Next-use information computed
    # TAC 6: 7: function begin : main
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 60 bytes
    addiu $sp, $sp, -60
    # Allocate 60 bytes (8 for $ra+$fp, 60 for locals/temps)
    sw $ra, 56($sp)
    # Save return address at 64($sp)
    sw $fp, 52($sp)
    # Save old frame pointer at 60($sp)
    addiu $fp, $sp, 52
    # Set new frame pointer (points to saved old $fp)

    # TAC 7: 8: v_a_main_s2 = 0
I8:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_a_main_s2 = 0
    # DEBUG: v_a_main_s2 = constant 0 loaded in $t0 (dirty)
    li $t0, 0

    # End of block B5 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled v_a_main_s2 from $t0 to memory at -4($fp)

    sw $t0, -4($fp)
    # ======================================
    # === B6_i8_i8 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B6 ===
    # Instr i8 Next-Use:
    #   v_a_main_s2 -> N/A
    # === End of Next-Use Computation for Block B6 ===

    # Next-use information computed
    # TAC 8: 9: if v_a_main_s2 < 5 goto I11
I9:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [memory:-4($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if v_a_main_s2 < 5 goto I11
    # DEBUG: Loaded v_a_main_s2 from memory at -4($fp)
    # DEBUG: v_a_main_s2 in $t0
    # DEBUG: Loaded constant 5 into $t1
    # DEBUG: 5 in $t1
    # Branch to I11 if condition true
    lw $t0, -4($fp)
    li $t1, 5
    blt $t0, $t1, I11


    # ======================================
    # === B7_i9_i9 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B7 ===
    # Instr i9 Next-Use:
    # === End of Next-Use Computation for Block B7 ===

    # Next-use information computed
    # TAC 9: 10: goto I13
I10:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [memory:-4($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I13
    j I13


    # ======================================
    # === B8_i10_i11 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B8 ===
    # Instr i11 Next-Use:
    # Instr i10 Next-Use:
    #   #t1 -> N/A
    #   1 -> N/A
    # === End of Next-Use Computation for Block B8 ===

    # Next-use information computed
    # TAC 10: 11: #t1 = 1
I11:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_a_main_s2: [memory:-4($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 1
    # DEBUG: #t1 = constant 1 loaded in $t0 (dirty)
    li $t0, 1

    # TAC 11: 12: goto I14
I12:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_a_main_s2: [memory:-4($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t1 from $t0 to memory at -8($fp)
    # Unconditional jump to I14
    sw $t0, -8($fp)
    j I14


    # ======================================
    # === B9_i12_i12 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B9 ===
    # Instr i12 Next-Use:
    #   #t1 -> N/A
    #   0 -> N/A
    # === End of Next-Use Computation for Block B9 ===

    # Next-use information computed
    # TAC 12: 13: #t1 = 0
I13:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t1 = 0
    # DEBUG: #t1 = constant 0 loaded in $t0 (dirty)
    li $t0, 0

    # End of block B9 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t1 from $t0 to memory at -8($fp)

    sw $t0, -8($fp)
    # ======================================
    # === B10_i13_i13 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B10 ===
    # Instr i13 Next-Use:
    #   #t1 -> N/A
    # === End of Next-Use Computation for Block B10 ===

    # Next-use information computed
    # TAC 13: 14: if #t1   goto I16
I14:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t1 ?? 0 goto I16
    # DEBUG: Loaded #t1 from memory at -8($fp)
    # DEBUG: #t1 in $t0
    # Branch to I16 if condition true
    lw $t0, -8($fp)
    bne $t0, $zero, I16


    # ======================================
    # === B11_i14_i14 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B11 ===
    # Instr i14 Next-Use:
    # === End of Next-Use Computation for Block B11 ===

    # Next-use information computed
    # TAC 14: 15: goto I22
I15:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I22
    j I22


    # ======================================
    # === B12_i15_i20 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B12 ===
    # Instr i20 Next-Use:
    # Instr i19 Next-Use:
    #   #t3 -> N/A
    #   v_a_main_s2 -> N/A
    # Instr i18 Next-Use:
    #   #t3 -> N/A
    #   v_a_main_s2 -> N/A
    # Instr i17 Next-Use:
    #   #t2 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i16 Next-Use:
    #   v_a_main_s2 -> N/A
    # Instr i15 Next-Use:
    # === End of Next-Use Computation for Block B12 ===

    # Next-use information computed
    # TAC 15: 16: param "a: %d\n"
I16:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "a: %d\n"
    # DEBUG: Collected parameter #1: "a: %d\n"

    # TAC 16: 17: param v_a_main_s2
I17:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_a_main_s2
    # DEBUG: Collected parameter #2: v_a_main_s2

    # TAC 17: 18: #t2 = call printf_cp1_variadic, 2
I18:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"a: %d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_a_main_s2
    # DEBUG: Loaded v_a_main_s2 from memory at -4($fp)
    # Deallocate variadic args space
    # DEBUG: Invalidating all cached values after printf
    # === End printf ===
    la $a0, str_0
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 18: 19: #t3 = v_a_main_s2 + 1
I19:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t3 = v_a_main_s2 add 1
    # DEBUG: Loaded v_a_main_s2 from memory at -4($fp)
    # DEBUG: v_a_main_s2 in $t0
    # DEBUG: Loaded constant 1 into $t1
    # DEBUG: 1 in $t1
    # DEBUG: #t3 = result in $t2 (dirty)
    lw $t0, -4($fp)
    li $t1, 1
    add $t2, $t0, $t1

    # TAC 19: 20: v_a_main_s2 = #t3
I20:
    # --- Register Descriptor ---
    # $t0: [v_a_main_s2]
    # $t2: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t3: [$t2]
    # v_a_main_s2: [$t0, memory:-4($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_a_main_s2 = #t3
    # DEBUG: #t3 already in $t2
    # DEBUG: v_a_main_s2 was in $t0, spilling all variables in that register
    # DEBUG: v_a_main_s2 now also in $t2 (dirty)
    # DEBUG: Saved v_a_main_s2 to memory at -4($fp)
    sw $t2, -4($fp)

    # TAC 20: 21: goto I9
I21:
    # --- Register Descriptor ---
    # $t2: [#t3, v_a_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t3: [$t2]
    # v_a_main_s2: [$t2, memory:-4($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t3 from $t2 to memory at -12($fp)
    # DEBUG: Spilled v_a_main_s2 from $t2 to memory at -4($fp)
    # Unconditional jump to I9
    sw $t2, -12($fp)
    sw $t2, -4($fp)
    j I9


    # ======================================
    # === B13_i21_i21 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B13 ===
    # Instr i21 Next-Use:
    # === End of Next-Use Computation for Block B13 ===

    # Next-use information computed
    # TAC 21: 22: return 0
I22:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B14_i22_i22 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B14 ===
    # Instr i22 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B14 ===

    # Next-use information computed
    # TAC 22: 23: end function main
I23:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t3: [memory:-12($fp)]
    # v_a_main_s2: [memory:-4($fp)]
    # v_s_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_s_scanf_cp1_variadic_s2: [memory:8($fp)]
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

