

-------------------------------------------------------------------------
Parsing completed. TAC output written to string_test.tac
MIPS assembly written to string_test.asm
Error log written to string_test.c.errors
Debug log written to debug.log
Symbol table log written to symtab.log
Function table log written to function_table.log
Jump table log written to jump_table.log
-------------------------------------------------------------------------
-------------------------------------------------------------------------



============================
    # Block B1: i0-i4
    # Block B2: i5-i5

.data
    # String Literals
str_0: .asciiz "Hello World"
str_1: .asciiz "Testing string literals"

.text
.globl main

    # ======================================
    # === B1_i0_i4 ===
    # ======================================
    # Registers cleared at block start
    # TAC 0: 1: function begin : main
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 20 bytes
    addiu $sp, $sp, -20
    # Allocate 20 bytes (8 for $ra+$fp, 20 for locals/temps)
    sw $ra, 16($sp)
    # Save return address at 24($sp)
    sw $fp, 12($sp)
    # Save old frame pointer at 20($sp)
    addiu $fp, $sp, 12
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 1: 2: v_msg1_main_s2 = "Hello World"
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # Assignment: v_msg1_main_s2 = "Hello World"
    la $t0, str_0
    # DEBUG: Loaded address of string ""Hello World"" into $t0
    # DEBUG: v_msg1_main_s2 = &str_0 in $t0 (dirty)

    # TAC 2: 3: v_msg2_main_s2 = "Testing string literals"
I3:
    # --- Register Descriptor ---
    # $t0: [v_msg1_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_msg1_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_msg2_main_s2 = "Testing string literals"
    la $t1, str_1
    # DEBUG: Loaded address of string ""Testing string literals"" into $t1
    # DEBUG: v_msg2_main_s2 = &str_1 in $t1 (dirty)

    # TAC 3: 4: v_msg3_main_s2 = "Hello World"
I4:
    # --- Register Descriptor ---
    # $t0: [v_msg1_main_s2] (dirty)
    # $t1: [v_msg2_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_msg1_main_s2: [$t0]
    # v_msg2_main_s2: [$t1]
    # --- End Storage Descriptor ---
    # Assignment: v_msg3_main_s2 = "Hello World"
    la $t2, str_0
    # DEBUG: Loaded address of string ""Hello World"" into $t2
    # DEBUG: v_msg3_main_s2 = &str_0 in $t2 (dirty)

    # TAC 4: 5: return 0
I5:
    # --- Register Descriptor ---
    # $t0: [v_msg1_main_s2] (dirty)
    # $t1: [v_msg2_main_s2] (dirty)
    # $t2: [v_msg3_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_msg1_main_s2: [$t0]
    # v_msg2_main_s2: [$t1]
    # v_msg3_main_s2: [$t2]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 3 dirty registers
    sw $t0, -4($fp)
    # DEBUG: Spilled v_msg1_main_s2 from $t0 to memory at -4($fp)
    sw $t1, -8($fp)
    # DEBUG: Spilled v_msg2_main_s2 from $t1 to memory at -8($fp)
    sw $t2, -12($fp)
    # DEBUG: Spilled v_msg3_main_s2 from $t2 to memory at -12($fp)
    # return 0
    li $v0, 0
    # DEBUG: Return constant 0 in $v0


    # ======================================
    # === B2_i5_i5 ===
    # ======================================
    # Registers cleared at block start
    # TAC 5: 6: end function main
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_msg1_main_s2: [memory:-4($fp)]
    # v_msg2_main_s2: [memory:-8($fp)]
    # v_msg3_main_s2: [memory:-12($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for main ===
    move $sp, $fp
    # Move $sp to $fp (where old $fp is saved)
    lw $ra, 4($fp)
    # Restore return address
    lw $fp, 0($fp)
    # Restore old frame pointer
    addiu $sp, $sp, 20
    # Deallocate frame (20 bytes)
    jr $ra
    # Return to caller
    # === End of Epilogue ===
    # End of function: main


    # End of code
