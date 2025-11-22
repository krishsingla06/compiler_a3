    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 16

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""%d""
    # Added string literal: str_1 = ""You entered: ""
    # Added string literal: str_2 = ""%d\n""
    # Found 3 string literals

    # ======================================
    #   Collecting Global and Static Variables
    # ======================================
    # Allocated space for 0 global/static variables

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i1
    # Block B2: i2-i3
    # Block B3: i4-i14
    # Block B4: i15-i15

.data
    # String Literals
str_0: .asciiz "%d"
str_2: .asciiz "%d\n"
str_1: .asciiz "You entered: "

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
    # DEBUG: Parameter 0 (v_str_printf_cp1_variadic_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_str_printf_cp1_variadic_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: end function printf_cp1_variadic
I2:
    # --- Register Descriptor ---
    # $a0: [v_str_printf_cp1_variadic_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_str_printf_cp1_variadic_s2: [$a0, memory:8($fp)]
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
    # === B2_i2_i3 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B2 ===
    # Instr i3 Next-Use:
    #   scanf_cp1_variadic -> N/A
    # Instr i2 Next-Use:
    #   scanf_cp1_variadic -> N/A
    # === End of Next-Use Computation for Block B2 ===

    # Next-use information computed
    # TAC 2: 3: function begin : scanf_cp1_variadic
I3:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_str_printf_cp1_variadic_s2: [memory:8($fp)]
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
    # DEBUG: Parameter 0 (v_str_scanf_cp1_variadic_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_str_scanf_cp1_variadic_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 3: 4: end function scanf_cp1_variadic
I4:
    # --- Register Descriptor ---
    # $a0: [v_str_scanf_cp1_variadic_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_str_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_str_scanf_cp1_variadic_s2: [$a0, memory:8($fp)]
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
    # === B3_i4_i14 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i14 Next-Use:
    # Instr i13 Next-Use:
    #   #t4 -> N/A
    #   printf_cp1_variadic -> N/A
    # Instr i12 Next-Use:
    #   v_x_main_s2 -> N/A
    # Instr i11 Next-Use:
    # Instr i10 Next-Use:
    #   #t3 -> N/A
    #   printf_cp1_variadic -> i13
    # Instr i9 Next-Use:
    # Instr i8 Next-Use:
    #   #t2 -> N/A
    #   scanf_cp1_variadic -> N/A
    # Instr i7 Next-Use:
    #   #t1 -> N/A
    # Instr i6 Next-Use:
    # Instr i5 Next-Use:
    #   #t1 -> N/A
    #   v_x_main_s2 -> N/A
    # Instr i4 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 4: 5: function begin : main
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_str_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_str_scanf_cp1_variadic_s2: [memory:8($fp)]
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

    # TAC 5: 6: #t1 = & v_x_main_s2
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_str_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_str_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t1 = &v_x_main_s2
    # DEBUG: #t1 = address of v_x_main_s2 at -4($fp)
    # DEBUG: #t1 (pointer) in $t0 (dirty)
    addiu $t0, $fp, -4

    # TAC 6: 7: param "%d"
I7:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_str_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_str_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "%d"
    # DEBUG: Collected parameter #1: "%d"

    # TAC 7: 8: param #t1
I8:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_str_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_str_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param #t1
    # DEBUG: Collected parameter #2: #t1

    # TAC 8: 9: #t2 = call scanf_cp1_variadic, 2
I9:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_str_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_str_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call scanf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled #t1 from $t0 to -8($fp)
    # === End Caller-Save ===
    # === Call library function: scanf (variadic) ===
    # Scanf: format string + 1 argument addresses
    # Load format string literal address
    # Store argument addresses on stack
    # Arg 0 address: #t1
    # DEBUG: Invalidating all cached values after scanf
    # === End scanf ===
    sw $t0, -8($fp)
    la $a0, str_0
    addiu $sp, $sp, -4
    addiu $t0, $fp, -8
    sw $t0, 0($sp)
    jal __lib_scanf
    addiu $sp, $sp, 4

    # TAC 9: 10: param "You entered: "
I10:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_str_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_str_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "You entered: "
    # DEBUG: Collected parameter #1: "You entered: "

    # TAC 10: 11: #t3 = call printf_cp1_variadic, 1
I11:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_str_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_str_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 0 arguments
    # DEBUG: format_param = '"You entered: "', first char = 34
    # Load format string literal address
    # === End printf ===
    la $a0, str_1
    jal __lib_printf

    # TAC 11: 12: param "%d\n"
I12:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_str_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_str_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "%d\n"
    # DEBUG: Collected parameter #1: "%d\n"

    # TAC 12: 13: param v_x_main_s2
I13:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_str_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_str_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_x_main_s2
    # DEBUG: Collected parameter #2: v_x_main_s2

    # TAC 13: 14: #t4 = call printf_cp1_variadic, 2
I14:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_str_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_str_scanf_cp1_variadic_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call printf_cp1_variadic with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: printf (variadic) ===
    # Printf: format string + 1 arguments
    # DEBUG: format_param = '"%d\n"', first char = 34
    # Load format string literal address
    # Store variadic arguments on stack
    # Arg 0: v_x_main_s2
    # DEBUG: Loaded v_x_main_s2 from memory at -4($fp)
    # Deallocate variadic args space
    # === End printf ===
    la $a0, str_2
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_printf
    addiu $sp, $sp, 4

    # TAC 14: 15: return 0
I15:
    # --- Register Descriptor ---
    # $t0: [v_x_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_str_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_str_scanf_cp1_variadic_s2: [memory:8($fp)]
    # v_x_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B4_i15_i15 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i15 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 15: 16: end function main
I16:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # v_str_printf_cp1_variadic_s2: [memory:8($fp)]
    # v_str_scanf_cp1_variadic_s2: [memory:8($fp)]
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
__lib_scanf:
    # Save registers
    addiu $sp, $sp, -16
    sw $ra, 12($sp)
    sw $fp, 8($sp)
    sw $a0, 4($sp)  # Save format string
    sw $s0, 0($sp)  # Save $s0
    move $fp, $sp
    
    # Format string is in $a0
    move $s0, $a0  # $s0 = format string pointer
    
    # Parameter pointer - addresses of variables to store into
    addiu $t0, $fp, 16  # Points to variadic args (addresses) on stack
    
scanf_loop:
    # Load next character from format string
    lb $t1, 0($s0)
    beqz $t1, scanf_end
    
    # Check if it's a format specifier '%'
    li $t2, 37  # ASCII '%'
    bne $t1, $t2, scanf_continue  # Skip non-format chars
    
    # It's a format specifier, check next character
    addiu $s0, $s0, 1
    lb $t1, 0($s0)
    beqz $t1, scanf_end
    
    # Check format type
    li $t2, 100  # ASCII 'd' - integer
    beq $t1, $t2, scanf_int
    
    li $t2, 102  # ASCII 'f' - float
    beq $t1, $t2, scanf_float
    
    li $t2, 99   # ASCII 'c' - char
    beq $t1, $t2, scanf_char
    
    li $t2, 115  # ASCII 's' - string
    beq $t1, $t2, scanf_string
    
    # Unknown format, skip
    j scanf_continue

scanf_int:
    # Read integer (syscall 5)
    li $v0, 5
    syscall
    # $v0 now contains the integer
    # Get address from stack
    lw $t3, 0($t0)  # $t3 = address to store into
    sw $v0, 0($t3)   # Store integer at that address
    addiu $t0, $t0, 4  # Move to next parameter
    j scanf_continue

scanf_float:
    # Read float (syscall 6)
    li $v0, 6
    syscall
    # $f0 now contains the float
    # Get address from stack
    lw $t3, 0($t0)  # $t3 = address to store into
    s.s $f0, 0($t3)  # Store float at that address
    addiu $t0, $t0, 4  # Move to next parameter
    j scanf_continue

scanf_char:
    # Read character (syscall 12)
    li $v0, 12
    syscall
    # $v0 now contains the character
    # Get address from stack
    lw $t3, 0($t0)  # $t3 = address to store into
    sb $v0, 0($t3)   # Store byte (char) at that address
    addiu $t0, $t0, 4  # Move to next parameter
    j scanf_continue

scanf_string:
    # Read string (syscall 8)
    # Need buffer address and max length
    lw $a0, 0($t0)   # $a0 = buffer address from stack
    li $a1, 256      # Max length (you can adjust this)
    li $v0, 8
    syscall
    addiu $t0, $t0, 4  # Move to next parameter
    j scanf_continue

scanf_continue:
    # Move to next character in format string
    addiu $s0, $s0, 1
    j scanf_loop

scanf_end:
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

