    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 12

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Found 0 string literals

    # ======================================
    #   Basic Block Analysis
    # ======================================
    # Block B1: i0-i1
    # Block B2: i2-i2
    # Block B3: i3-i10
    # Block B4: i11-i11

.data
    # === Global and Static Variables ===
    # Variable: global_f (float)
    global_global_f: .float 0
    # Variable: global_x (int)
    global_global_x: .word 0

    # String Literals
    # (no string literals)

.text
.globl main

    # ======================================
    # === B1_i0_i1 ===
    # ======================================
    # Registers cleared at block start
    # TAC 0: 1: function begin : print_int_i
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
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
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp

    # === Initialize Parameter Descriptors ===
    # DEBUG: Parameter 0 (v_x_print_int_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_x_print_int_i_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 1: 2: return 
I2:
    # --- Register Descriptor ---
    # $a0: [v_x_print_int_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return (void)


    # ======================================
    # === B2_i2_i2 ===
    # ======================================
    # Registers cleared at block start
    # TAC 2: 3: end function print_int_i
I3:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [memory:8($fp)]
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
    # === B3_i3_i10 ===
    # ======================================
    # Registers cleared at block start
    # TAC 3: 4: function begin : main
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [memory:8($fp)]
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
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 4: 5: global_x = 100
I5:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: global_x = 100
    li $t0, 100
    sw $t0, global_global_x
    # DEBUG: Stored global_x to global global_global_x

    # TAC 5: 6: global_f = 2.500000
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: global_f = 2.500000
    # DEBUG: Float assignment
    # Loading float constant: 2.500000
    li.s $f0, 2.500000
    # DEBUG: Loaded float constant 2.500000 into $f0
    # DEBUG: 2.500000 in $f0
    s.s $f0, global_global_f
    # DEBUG: Stored float global_f to global global_global_f

    # TAC 6: 7: #t1 = global_x + 10
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t1 = global_x add 10
    # DEBUG: Loading global variable global_x
    lw $t0, global_global_x
    # DEBUG: Loaded global global_x from global_global_x into $t0
    # DEBUG: global_x in $t0
    li $t1, 10
    # DEBUG: Loaded constant 10 into $t1
    # DEBUG: 10 in $t1
    add $t2, $t0, $t1
    # DEBUG: #t1 = result in $t2 (dirty)

    # TAC 7: 8: v_local_main_s2 = #t1
I8:
    # --- Register Descriptor ---
    # $t0: [global_x]
    # $t1: [<CONSTANT>]
    # $t2: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # <CONSTANT>: [$t1]
    # global_x: [$t0, global:global_global_x]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_local_main_s2 = #t1
    # DEBUG: #t1 already in $t2
    # DEBUG: v_local_main_s2 now also in $t2 (dirty)
    sw $t2, -4($fp)
    # DEBUG: Saved v_local_main_s2 to memory at -4($fp)

    # TAC 8: 9: param v_local_main_s2
I9:
    # --- Register Descriptor ---
    # $t0: [global_x]
    # $t1: [<CONSTANT>]
    # $t2: [#t1, v_local_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # <CONSTANT>: [$t1]
    # global_x: [$t0, global:global_global_x]
    # v_local_main_s2: [$t2, memory:-4($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_local_main_s2
    # DEBUG: Collected parameter #1: v_local_main_s2

    # TAC 9: 10: #t2 = call print_int_i, 1
I10:
    # --- Register Descriptor ---
    # $t0: [global_x]
    # $t1: [<CONSTANT>]
    # $t2: [#t1, v_local_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # <CONSTANT>: [$t1]
    # global_x: [$t0, global:global_global_x]
    # v_local_main_s2: [$t2, memory:-4($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Built-in print_int function ===
    move $a0, $t2
    li $v0, 1
    syscall
    # === End print_int ===

    # TAC 10: 11: return 0
I11:
    # --- Register Descriptor ---
    # $t0: [global_x]
    # $t1: [<CONSTANT>]
    # $t2: [#t1, v_local_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t2]
    # <CONSTANT>: [$t1]
    # global_x: [$t0, global:global_global_x]
    # v_local_main_s2: [$t2, memory:-4($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    sw $t2, -8($fp)
    # DEBUG: Spilled #t1 from $t2 to memory at -8($fp)
    sw $t2, -4($fp)
    # DEBUG: Spilled v_local_main_s2 from $t2 to memory at -4($fp)
    # === Spilling all dirty registers before return ===
    # return 0
    li $v0, 0
    # DEBUG: Return constant 0 in $v0


    # ======================================
    # === B4_i11_i11 ===
    # ======================================
    # Registers cleared at block start
    # TAC 11: 12: end function main
I12:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-8($fp)]
    # global_x: [global:global_global_x]
    # v_local_main_s2: [memory:-4($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
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
