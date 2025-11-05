

-------------------------------------------------------------------------
Parsing completed. TAC output written to k.tac
MIPS assembly written to k.asm
Error log written to k.c.errors
Debug log written to debug.log
Symbol table log written to symtab.log
Function table log written to function_table.log
Jump table log written to jump_table.log
-------------------------------------------------------------------------
-------------------------------------------------------------------------



(no string literals)

.text
.globl main

    # ======================================
    # === B1_i0_i7 ===
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
    # Frame size: 72 bytes
    addiu $sp, $sp, -72
    # Allocate 72 bytes (8 for $ra+$fp, 72 for locals/temps)
    sw $ra, 68($sp)
    # Save return address at 76($sp)
    sw $fp, 64($sp)
    # Save old frame pointer at 72($sp)
    addiu $fp, $sp, 64
    # Set new frame pointer (points to saved old $fp)
    # === End of Prologue ===
    # Now: $fp+4 = $ra, $fp+0 = old $fp, $fp-4 = first local/temp


    # TAC 1: 2: #t1 = & v_x_main_s2
I2:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
    # #t1 = &v_x_main_s2
    addiu $t0, $fp, -40
    # DEBUG: #t1 = address of v_x_main_s2 at -40($fp)
    # DEBUG: #t1 (pointer) in $t0 (dirty)

    # TAC 2: 3: v_ptr_main_s2 = #t1
I3:
    # --- Register Descriptor ---
    # $t0: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_ptr_main_s2 = #t1
    # DEBUG: #t1 already in $t0
    # DEBUG: v_ptr_main_s2 now also in $t0 (dirty)

    # TAC 3: 4: #t2 = v_ptr_main_s2
I4:
    # --- Register Descriptor ---
    # $t0: [#t1, v_ptr_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # v_ptr_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: #t2 = v_ptr_main_s2
    # DEBUG: v_ptr_main_s2 already in $t0
    # DEBUG: #t2 now also in $t0 (dirty)

    # TAC 4: 5: *(#t2) = 10
I5:
    # --- Register Descriptor ---
    # $t0: [#t1, #t2, v_ptr_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t0]
    # v_ptr_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # *#t2 = 10
    # DEBUG: Pointer #t2 in $t0
    li $t1, 10
    # DEBUG: Loaded constant 10 into $t1
    # DEBUG: Value 10 in $t1
    sw $t1, 0($t0)
    # DEBUG: Stored 10 through pointer #t2

    # TAC 5: 6: #t3 = * v_ptr_main_s2
I6:
    # --- Register Descriptor ---
    # $t0: [#t1, #t2, v_ptr_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t0]
    # v_ptr_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # #t3 = *v_ptr_main_s2
    # DEBUG: Pointer v_ptr_main_s2 already in $t0
    lw $t1, 0($t0)
    # DEBUG: Dereferenced *v_ptr_main_s2 into $t1
    # DEBUG: #t3 = *v_ptr_main_s2 in $t1 (dirty)

    # TAC 6: 7: v_x_main_s2 = #t3
I7:
    # --- Register Descriptor ---
    # $t0: [#t1, #t2, v_ptr_main_s2] (dirty)
    # $t1: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t0]
    # #t3: [$t1]
    # v_ptr_main_s2: [$t0]
    # --- End Storage Descriptor ---
    # Assignment: v_x_main_s2 = #t3
    # DEBUG: #t3 already in $t1
    # DEBUG: v_x_main_s2 now also in $t1 (dirty)

    # TAC 7: 8: end function main
I8:
    # --- Register Descriptor ---
    # $t0: [#t1, #t2, v_ptr_main_s2] (dirty)
    # $t1: [#t3, v_x_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t0]
    # #t2: [$t0]
    # #t3: [$t1]
    # v_ptr_main_s2: [$t0]
    # v_x_main_s2: [$t1]
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
