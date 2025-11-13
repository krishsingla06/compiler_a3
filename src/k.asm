    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 22

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""Hello World""
    # Added string literal: str_1 = ""%c ""
    # Found 2 string literals

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
    # Block B7: i9-i10
    # Block B8: i11-i11
    # Block B9: i12-i20
    # Block B10: i21-i21

.data
    # String Literals
str_1: .asciiz "%c "
str_0: .asciiz "Hello World"

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
    # DEBUG: Parameter 0 (v_format_printf_cp1_variadic_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_format_printf_cp1_variadic_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: return 
I2:
    # --- Register Descriptor ---
    # $a0: [v_format_printf_cp1_variadic_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_format_printf_cp1_variadic_s2: [$a0, memory:8($fp)]
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
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
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
    #   print_char_c -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 3: 4: function begin : print_char_c
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
print_char_c:
    # Function: print_char_c
    # === Function Prologue for print_char_c ===
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
    # DEBUG: Parameter 0 (v_c_print_char_c_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_c_print_char_c_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 4: 5: return 
I5:
    # --- Register Descriptor ---
    # $a0: [v_c_print_char_c_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [$a0, memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
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
    #   print_char_c -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 5: 6: end function print_char_c
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for print_char_c ===
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
    # End of function: print_char_c


    # ======================================
    # === B5_i6_i7 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i7 Next-Use:
    # Instr i6 Next-Use:
    #   print_int_i -> N/A
    # === End of Next-Use Computation for Block B5 ===

    # Next-use information computed
    # TAC 6: 7: function begin : print_int_i
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
print_int_i:
    # Function: print_int_i
    # === Function Prologue for print_int_i ===
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
    # DEBUG: Parameter 0 (v_i_print_int_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_i_print_int_i_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 7: 8: return 
I8:
    # --- Register Descriptor ---
    # $a0: [v_i_print_int_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_print_int_i_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return (void)


    # ======================================
    # === B6_i8_i8 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B6 ===
    # Instr i8 Next-Use:
    #   print_int_i -> N/A
    # === End of Next-Use Computation for Block B6 ===

    # Next-use information computed
    # TAC 8: 9: end function print_int_i
I9:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for print_int_i ===
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
    # End of function: print_int_i


    # ======================================
    # === B7_i9_i10 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B7 ===
    # Instr i10 Next-Use:
    # Instr i9 Next-Use:
    #   print_newline -> N/A
    # === End of Next-Use Computation for Block B7 ===

    # Next-use information computed
    # TAC 9: 10: function begin : print_newline
I10:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
print_newline:
    # Function: print_newline
    # === Function Prologue for print_newline ===
    # Frame size: 48 bytes
    addiu $sp, $sp, -48
    # Allocate 48 bytes (8 for $ra+$fp, 48 for locals/temps)
    sw $ra, 44($sp)
    # Save return address at 52($sp)
    sw $fp, 40($sp)
    # Save old frame pointer at 48($sp)
    addiu $fp, $sp, 40
    # Set new frame pointer (points to saved old $fp)

    # TAC 10: 11: return 
I11:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return (void)


    # ======================================
    # === B8_i11_i11 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B8 ===
    # Instr i11 Next-Use:
    #   print_newline -> N/A
    # === End of Next-Use Computation for Block B8 ===

    # Next-use information computed
    # TAC 11: 12: end function print_newline
I12:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for print_newline ===
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
    # End of function: print_newline


    # ======================================
    # === B9_i12_i20 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B9 ===
    # Instr i20 Next-Use:
    # Instr i19 Next-Use:
    #   #t4 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i18 Next-Use:
    #   #t3 -> N/A
    # Instr i17 Next-Use:
    # Instr i16 Next-Use:
    #   #t2 -> N/A
    #   #t3 -> N/A
    # Instr i15 Next-Use:
    #   #t1 -> N/A
    #   #t2 -> N/A
    #   v_str_main_s2 -> N/A
    # Instr i14 Next-Use:
    #   #t1 -> N/A
    # Instr i13 Next-Use:
    #   v_str_main_s2 -> N/A
    # Instr i12 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B9 ===

    # Next-use information computed
    # TAC 12: 13: function begin : main
I13:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 64 bytes
    addiu $sp, $sp, -64
    # Allocate 64 bytes (8 for $ra+$fp, 64 for locals/temps)
    sw $ra, 60($sp)
    # Save return address at 68($sp)
    sw $fp, 56($sp)
    # Save old frame pointer at 64($sp)
    addiu $fp, $sp, 56
    # Set new frame pointer (points to saved old $fp)

    # TAC 13: 14: v_str_main_s2 = "Hello World"
I14:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_str_main_s2 = "Hello World"
    # DEBUG: Loaded address of string ""Hello World"" into $t0
    # DEBUG: v_str_main_s2 = &str_0 in $t0 (dirty)
    la $t0, str_0

    # TAC 14: 15: #t1 = 1 * 1
I15:
    # --- Register Descriptor ---
    # $t0: [v_str_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_str_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # #t1 = 1 mul 1
    # DEBUG: Loaded constant 1 into $t1
    # DEBUG: 1 in $t1
    # DEBUG: Loaded constant 1 into $t2
    # DEBUG: 1 in $t2
    # DEBUG: #t1 = result in $t3 (dirty)
    # PEEPHOLE: Simplified mul by 1 to move
    li $t1, 1
    li $t2, 1
    move $t3, $t1

    # TAC 15: 16: #t2 = v_str_main_s2 + #t1
I16:
    # --- Register Descriptor ---
    # $t0: [v_str_main_s2] (dirty)
    # $t3: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t3]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_str_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # #t2 = v_str_main_s2 add #t1
    # DEBUG: v_str_main_s2 in $t0
    # DEBUG: #t1 in $t3
    # DEBUG: #t2 = result in $t1 (dirty)
    add $t1, $t0, $t3

    # TAC 16: 17: #t3 = * #t2
I17:
    # --- Register Descriptor ---
    # $t0: [v_str_main_s2] (dirty)
    # $t1: [#t2] (dirty)
    # $t3: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t3]
    # #t2: [$t1]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_str_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # #t3 = *#t2
    # DEBUG: Pointer #t2 already in $t1
    # DEBUG: Spilled v_str_main_s2 from $t0 to memory
    # DEBUG: Dereferenced *#t2 (char*) into $t0 using lb
    # DEBUG: #t3 = *#t2 in $t0 (dirty)
    sw $t0, -4($fp)
    lb $t0, 0($t1)

    # TAC 17: 18: param "%c "
I18:
    # --- Register Descriptor ---
    # $t0: [#t3] (dirty)
    # $t1: [#t2] (dirty)
    # $t3: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t3]
    # #t2: [$t1]
    # #t3: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_str_main_s2: [memory:v_str_main_s2]
    # --- End Storage Descriptor ---
    # param "%c "
    # DEBUG: Collected parameter #1: "%c "

    # TAC 18: 19: param #t3
I19:
    # --- Register Descriptor ---
    # $t0: [#t3] (dirty)
    # $t1: [#t2] (dirty)
    # $t3: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t3]
    # #t2: [$t1]
    # #t3: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_str_main_s2: [memory:v_str_main_s2]
    # --- End Storage Descriptor ---
    # param #t3
    # DEBUG: Collected parameter #2: #t3

    # TAC 19: 20: #t4 = call printf_cp1_variadic, 2
I20:
    # --- Register Descriptor ---
    # $t0: [#t3] (dirty)
    # $t1: [#t2] (dirty)
    # $t3: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t3]
    # #t2: [$t1]
    # #t3: [$t0]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_str_main_s2: [memory:v_str_main_s2]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t3 from $t0 to -16($fp)
    # DEBUG: Spilled #t2 from $t1 to -12($fp)
    # DEBUG: Spilled #t1 from $t3 to -8($fp)
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%c "', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: #t3
    # DEBUG: Loaded #t3 from memory at -16($fp)
    # Deallocate variadic args space
    # === End printf ===
    sw $t0, -16($fp)
    sw $t1, -12($fp)
    sw $t3, -8($fp)
    la $a0, str_1
    addiu $sp, $sp, -4
    lw $t0, -16($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 20: 21: return 0
I21:
    # --- Register Descriptor ---
    # $t0: [#t3]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-12($fp)]
    # #t3: [$t0, memory:-16($fp)]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_str_main_s2: [memory:v_str_main_s2]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B10_i21_i21 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B10 ===
    # Instr i21 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B10 ===

    # Next-use information computed
    # TAC 21: 22: end function main
I22:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # #t2: [memory:-12($fp)]
    # #t3: [memory:-16($fp)]
    # v_c_print_char_c_s2: [memory:8($fp)]
    # v_format_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_i_print_int_i_s2: [memory:8($fp)]
    # v_str_main_s2: [memory:v_str_main_s2]
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
    addiu $sp, $sp, -32
    sw $ra, 28($sp)
    sw $s0, 24($sp)
    sw $s1, 20($sp)
    sw $s2, 16($sp)
    sw $s3, 12($sp)
    sw $s4, 8($sp)
    sw $s5, 4($sp)
    sw $s6, 0($sp)
    
    # $s0 = format string address
    move $s0, $a0
    
    # $s1 = current position in format string
    move $s1, $s0
    
    # $s2 = argument pointer (points to variadic args on caller's stack)
    # Caller pushed args on stack before calling
    # They're at our $sp + 32 (after our frame)
    addiu $s2, $sp, 32
    
__lib_printf_loop:
    # Load current character
    lb $s3, 0($s1)
    
    # Check for null terminator
    beq $s3, $zero, __lib_printf_end
    
    # Check for '%'
    li $s4, 37              # ASCII '%'
    beq $s3, $s4, __lib_printf_handle_percent
    
    # Regular character - print it
    move $a0, $s3
    li $v0, 11              # Syscall 11: print character
    syscall
    j __lib_printf_next_char

__lib_printf_handle_percent:
    # Move to next character (format type)
    addiu $s1, $s1, 1
    lb $s3, 0($s1)
    
    # Check for %%
    li $s4, 37
    beq $s3, $s4, __lib_printf_print_percent
    
    # Check for %d
    li $s4, 100             # ASCII 'd'
    beq $s3, $s4, __lib_printf_handle_d
    
    # Check for %f
    li $s4, 102             # ASCII 'f'
    beq $s3, $s4, __lib_printf_handle_f
    
    # Check for %c
    li $s4, 99              # ASCII 'c'
    beq $s3, $s4, __lib_printf_handle_c
    
    # Check for %s
    li $s4, 115             # ASCII 's'
    beq $s3, $s4, __lib_printf_handle_s
    
    # Unknown format - print as-is
    move $a0, $s3
    li $v0, 11
    syscall
    j __lib_printf_next_char

__lib_printf_print_percent:
    li $a0, 37
    li $v0, 11
    syscall
    j __lib_printf_next_char

__lib_printf_handle_d:
    # Print integer
    lw $a0, 0($s2)          # Load argument
    li $v0, 1               # Syscall 1: print integer
    syscall
    addiu $s2, $s2, 4       # Move to next argument
    j __lib_printf_next_char

__lib_printf_handle_f:
    # Print float
    lwc1 $f12, 0($s2)       # Load float argument
    li $v0, 2               # Syscall 2: print float
    syscall
    addiu $s2, $s2, 4       # Move to next argument
    j __lib_printf_next_char

__lib_printf_handle_c:
    # Print character
    lw $a0, 0($s2)          # Load character (stored as int)
    li $v0, 11              # Syscall 11: print character
    syscall
    addiu $s2, $s2, 4       # Move to next argument
    j __lib_printf_next_char

__lib_printf_handle_s:
    # Print string
    lw $a0, 0($s2)          # Load string address
    li $v0, 4               # Syscall 4: print string
    syscall
    addiu $s2, $s2, 4       # Move to next argument
    j __lib_printf_next_char

__lib_printf_next_char:
    addiu $s1, $s1, 1       # Move to next character in format string
    j __lib_printf_loop

__lib_printf_end:
    # Restore registers
    lw $s6, 0($sp)
    lw $s5, 4($sp)
    lw $s4, 8($sp)
    lw $s3, 12($sp)
    lw $s2, 16($sp)
    lw $s1, 20($sp)
    lw $s0, 24($sp)
    lw $ra, 28($sp)
    addiu $sp, $sp, 32
    
    jr $ra


#==============================================================================
# END OF RUNTIME LIBRARY
#==============================================================================

