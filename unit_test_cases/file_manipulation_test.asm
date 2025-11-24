    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 70

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""World from fputs""
    # Added string literal: str_1 = ""Number: ""
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
    # Block B9: i12-i13
    # Block B10: i14-i14
    # Block B11: i15-i16
    # Block B12: i17-i17
    # Block B13: i18-i19
    # Block B14: i20-i20
    # Block B15: i21-i22
    # Block B16: i23-i23
    # Block B17: i24-i25
    # Block B18: i26-i26
    # Block B19: i27-i28
    # Block B20: i29-i29
    # Block B21: i30-i68
    # Block B22: i69-i69

.data
    # String Literals
str_1: .asciiz "Number: "
str_0: .asciiz "World from fputs"

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
    #   fopen_cp1_cp1 -> N/A
    # === End of Next-Use Computation for Block B1 ===

    # Next-use information computed
    # TAC 0: 1: function begin : fopen_cp1_cp1
I1:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # --- End Storage Descriptor ---
fopen_cp1_cp1:
    # Function: fopen_cp1_cp1
    # === Function Prologue for fopen_cp1_cp1 ===
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
    # DEBUG: Parameter 0 (v_filename_fopen_cp1_cp1_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_filename_fopen_cp1_cp1_s2) in $a0
    # DEBUG: Parameter 1 (v_mode_fopen_cp1_cp1_s2) at 12($fp)
    # DEBUG: Integer parameter 1 (v_mode_fopen_cp1_cp1_s2) in $a1
    # === End Parameter Initialization ===


    # TAC 1: 2: return 0
I2:
    # --- Register Descriptor ---
    # $a0: [v_filename_fopen_cp1_cp1_s2]
    # $a1: [v_mode_fopen_cp1_cp1_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_filename_fopen_cp1_cp1_s2: [$a0, memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [$a1, memory:12($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B2_i2_i2 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B2 ===
    # Instr i2 Next-Use:
    #   fopen_cp1_cp1 -> N/A
    # === End of Next-Use Computation for Block B2 ===

    # Next-use information computed
    # TAC 2: 3: end function fopen_cp1_cp1
I3:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for fopen_cp1_cp1 ===
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
    # End of function: fopen_cp1_cp1


    # ======================================
    # === B3_i3_i4 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B3 ===
    # Instr i4 Next-Use:
    # Instr i3 Next-Use:
    #   fclose_i -> N/A
    # === End of Next-Use Computation for Block B3 ===

    # Next-use information computed
    # TAC 3: 4: function begin : fclose_i
I4:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
fclose_i:
    # Function: fclose_i
    # === Function Prologue for fclose_i ===
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
    # DEBUG: Parameter 0 (v_fd_fclose_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_fd_fclose_i_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 4: 5: return 0
I5:
    # --- Register Descriptor ---
    # $a0: [v_fd_fclose_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fd_fclose_i_s2: [$a0, memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B4_i5_i5 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B4 ===
    # Instr i5 Next-Use:
    #   fclose_i -> N/A
    # === End of Next-Use Computation for Block B4 ===

    # Next-use information computed
    # TAC 5: 6: end function fclose_i
I6:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for fclose_i ===
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
    # End of function: fclose_i


    # ======================================
    # === B5_i6_i7 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B5 ===
    # Instr i7 Next-Use:
    # Instr i6 Next-Use:
    #   fgetc_i -> N/A
    # === End of Next-Use Computation for Block B5 ===

    # Next-use information computed
    # TAC 6: 7: function begin : fgetc_i
I7:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
fgetc_i:
    # Function: fgetc_i
    # === Function Prologue for fgetc_i ===
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
    # DEBUG: Parameter 0 (v_fd_fgetc_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_fd_fgetc_i_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 7: 8: return 0
I8:
    # --- Register Descriptor ---
    # $a0: [v_fd_fgetc_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [$a0, memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B6_i8_i8 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B6 ===
    # Instr i8 Next-Use:
    #   fgetc_i -> N/A
    # === End of Next-Use Computation for Block B6 ===

    # Next-use information computed
    # TAC 8: 9: end function fgetc_i
I9:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for fgetc_i ===
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
    # End of function: fgetc_i


    # ======================================
    # === B7_i9_i10 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B7 ===
    # Instr i10 Next-Use:
    # Instr i9 Next-Use:
    #   fputc_i_i -> N/A
    # === End of Next-Use Computation for Block B7 ===

    # Next-use information computed
    # TAC 9: 10: function begin : fputc_i_i
I10:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
fputc_i_i:
    # Function: fputc_i_i
    # === Function Prologue for fputc_i_i ===
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
    # DEBUG: Parameter 0 (v_ch_fputc_i_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_ch_fputc_i_i_s2) in $a0
    # DEBUG: Parameter 1 (v_fd_fputc_i_i_s2) at 12($fp)
    # DEBUG: Integer parameter 1 (v_fd_fputc_i_i_s2) in $a1
    # === End Parameter Initialization ===


    # TAC 10: 11: return 0
I11:
    # --- Register Descriptor ---
    # $a0: [v_ch_fputc_i_i_s2]
    # $a1: [v_fd_fputc_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_ch_fputc_i_i_s2: [$a0, memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [$a1, memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B8_i11_i11 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B8 ===
    # Instr i11 Next-Use:
    #   fputc_i_i -> N/A
    # === End of Next-Use Computation for Block B8 ===

    # Next-use information computed
    # TAC 11: 12: end function fputc_i_i
I12:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for fputc_i_i ===
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
    # End of function: fputc_i_i


    # ======================================
    # === B9_i12_i13 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B9 ===
    # Instr i13 Next-Use:
    # Instr i12 Next-Use:
    #   fgets_cp1_i_i -> N/A
    # === End of Next-Use Computation for Block B9 ===

    # Next-use information computed
    # TAC 12: 13: function begin : fgets_cp1_i_i
I13:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
fgets_cp1_i_i:
    # Function: fgets_cp1_i_i
    # === Function Prologue for fgets_cp1_i_i ===
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
    # DEBUG: Parameter 0 (v_buffer_fgets_cp1_i_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_buffer_fgets_cp1_i_i_s2) in $a0
    # DEBUG: Parameter 1 (v_size_fgets_cp1_i_i_s2) at 12($fp)
    # DEBUG: Integer parameter 1 (v_size_fgets_cp1_i_i_s2) in $a1
    # DEBUG: Parameter 2 (v_fd_fgets_cp1_i_i_s2) at 16($fp)
    # DEBUG: Integer parameter 2 (v_fd_fgets_cp1_i_i_s2) in $a2
    # === End Parameter Initialization ===


    # TAC 13: 14: return 0
I14:
    # --- Register Descriptor ---
    # $a0: [v_buffer_fgets_cp1_i_i_s2]
    # $a1: [v_size_fgets_cp1_i_i_s2]
    # $a2: [v_fd_fgets_cp1_i_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_buffer_fgets_cp1_i_i_s2: [$a0, memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [$a2, memory:16($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [$a1, memory:12($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B10_i14_i14 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B10 ===
    # Instr i14 Next-Use:
    #   fgets_cp1_i_i -> N/A
    # === End of Next-Use Computation for Block B10 ===

    # Next-use information computed
    # TAC 14: 15: end function fgets_cp1_i_i
I15:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for fgets_cp1_i_i ===
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
    # End of function: fgets_cp1_i_i


    # ======================================
    # === B11_i15_i16 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B11 ===
    # Instr i16 Next-Use:
    # Instr i15 Next-Use:
    #   fputs_cp1_i -> N/A
    # === End of Next-Use Computation for Block B11 ===

    # Next-use information computed
    # TAC 15: 16: function begin : fputs_cp1_i
I16:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # --- End Storage Descriptor ---
fputs_cp1_i:
    # Function: fputs_cp1_i
    # === Function Prologue for fputs_cp1_i ===
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
    # DEBUG: Parameter 0 (v_str_fputs_cp1_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_str_fputs_cp1_i_s2) in $a0
    # DEBUG: Parameter 1 (v_fd_fputs_cp1_i_s2) at 12($fp)
    # DEBUG: Integer parameter 1 (v_fd_fputs_cp1_i_s2) in $a1
    # === End Parameter Initialization ===


    # TAC 16: 17: return 0
I17:
    # --- Register Descriptor ---
    # $a0: [v_str_fputs_cp1_i_s2]
    # $a1: [v_fd_fputs_cp1_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [$a1, memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [$a0, memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B12_i17_i17 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B12 ===
    # Instr i17 Next-Use:
    #   fputs_cp1_i -> N/A
    # === End of Next-Use Computation for Block B12 ===

    # Next-use information computed
    # TAC 17: 18: end function fputs_cp1_i
I18:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for fputs_cp1_i ===
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
    # End of function: fputs_cp1_i


    # ======================================
    # === B13_i18_i19 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B13 ===
    # Instr i19 Next-Use:
    # Instr i18 Next-Use:
    #   fprintf_i_cp1_i -> N/A
    # === End of Next-Use Computation for Block B13 ===

    # Next-use information computed
    # TAC 18: 19: function begin : fprintf_i_cp1_i
I19:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
fprintf_i_cp1_i:
    # Function: fprintf_i_cp1_i
    # === Function Prologue for fprintf_i_cp1_i ===
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
    # DEBUG: Parameter 0 (v_fd_fprintf_i_cp1_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_fd_fprintf_i_cp1_i_s2) in $a0
    # DEBUG: Parameter 1 (v_format_fprintf_i_cp1_i_s2) at 12($fp)
    # DEBUG: Integer parameter 1 (v_format_fprintf_i_cp1_i_s2) in $a1
    # DEBUG: Parameter 2 (v_arg1_fprintf_i_cp1_i_s2) at 16($fp)
    # DEBUG: Integer parameter 2 (v_arg1_fprintf_i_cp1_i_s2) in $a2
    # === End Parameter Initialization ===


    # TAC 19: 20: return 0
I20:
    # --- Register Descriptor ---
    # $a0: [v_fd_fprintf_i_cp1_i_s2]
    # $a1: [v_format_fprintf_i_cp1_i_s2]
    # $a2: [v_arg1_fprintf_i_cp1_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_arg1_fprintf_i_cp1_i_s2: [$a2, memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [$a0, memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [$a1, memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B14_i20_i20 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B14 ===
    # Instr i20 Next-Use:
    #   fprintf_i_cp1_i -> N/A
    # === End of Next-Use Computation for Block B14 ===

    # Next-use information computed
    # TAC 20: 21: end function fprintf_i_cp1_i
I21:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for fprintf_i_cp1_i ===
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
    # End of function: fprintf_i_cp1_i


    # ======================================
    # === B15_i21_i22 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B15 ===
    # Instr i22 Next-Use:
    # Instr i21 Next-Use:
    #   fscanf_i_cp1_ip1 -> N/A
    # === End of Next-Use Computation for Block B15 ===

    # Next-use information computed
    # TAC 21: 22: function begin : fscanf_i_cp1_ip1
I22:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
fscanf_i_cp1_ip1:
    # Function: fscanf_i_cp1_ip1
    # === Function Prologue for fscanf_i_cp1_ip1 ===
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
    # DEBUG: Parameter 0 (v_fd_fscanf_i_cp1_ip1_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_fd_fscanf_i_cp1_ip1_s2) in $a0
    # DEBUG: Parameter 1 (v_format_fscanf_i_cp1_ip1_s2) at 12($fp)
    # DEBUG: Integer parameter 1 (v_format_fscanf_i_cp1_ip1_s2) in $a1
    # DEBUG: Parameter 2 (v_addr_fscanf_i_cp1_ip1_s2) at 16($fp)
    # DEBUG: Integer parameter 2 (v_addr_fscanf_i_cp1_ip1_s2) in $a2
    # === End Parameter Initialization ===


    # TAC 22: 23: return 0
I23:
    # --- Register Descriptor ---
    # $a0: [v_fd_fscanf_i_cp1_ip1_s2]
    # $a1: [v_format_fscanf_i_cp1_ip1_s2]
    # $a2: [v_addr_fscanf_i_cp1_ip1_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_addr_fscanf_i_cp1_ip1_s2: [$a2, memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [$a0, memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [$a1, memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B16_i23_i23 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B16 ===
    # Instr i23 Next-Use:
    #   fscanf_i_cp1_ip1 -> N/A
    # === End of Next-Use Computation for Block B16 ===

    # Next-use information computed
    # TAC 23: 24: end function fscanf_i_cp1_ip1
I24:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for fscanf_i_cp1_ip1 ===
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
    # End of function: fscanf_i_cp1_ip1


    # ======================================
    # === B17_i24_i25 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B17 ===
    # Instr i25 Next-Use:
    # Instr i24 Next-Use:
    #   feof_i -> N/A
    # === End of Next-Use Computation for Block B17 ===

    # Next-use information computed
    # TAC 24: 25: function begin : feof_i
I25:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
feof_i:
    # Function: feof_i
    # === Function Prologue for feof_i ===
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
    # DEBUG: Parameter 0 (v_fd_feof_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_fd_feof_i_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 25: 26: return 0
I26:
    # --- Register Descriptor ---
    # $a0: [v_fd_feof_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [$a0, memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B18_i26_i26 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B18 ===
    # Instr i26 Next-Use:
    #   feof_i -> N/A
    # === End of Next-Use Computation for Block B18 ===

    # Next-use information computed
    # TAC 26: 27: end function feof_i
I27:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for feof_i ===
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
    # End of function: feof_i


    # ======================================
    # === B19_i27_i28 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B19 ===
    # Instr i28 Next-Use:
    # Instr i27 Next-Use:
    #   ferror_i -> N/A
    # === End of Next-Use Computation for Block B19 ===

    # Next-use information computed
    # TAC 27: 28: function begin : ferror_i
I28:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
ferror_i:
    # Function: ferror_i
    # === Function Prologue for ferror_i ===
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
    # DEBUG: Parameter 0 (v_fd_ferror_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_fd_ferror_i_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 28: 29: return 0
I29:
    # --- Register Descriptor ---
    # $a0: [v_fd_ferror_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [$a0, memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B20_i29_i29 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B20 ===
    # Instr i29 Next-Use:
    #   ferror_i -> N/A
    # === End of Next-Use Computation for Block B20 ===

    # Next-use information computed
    # TAC 29: 30: end function ferror_i
I30:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for ferror_i ===
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
    # End of function: ferror_i


    # ======================================
    # === B21_i30_i68 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B21 ===
    # Instr i68 Next-Use:
    # Instr i67 Next-Use:
    #   #t12 -> N/A
    #   v_result_main_s2 -> N/A
    # Instr i66 Next-Use:
    #   #t12 -> N/A
    #   fclose_i -> N/A
    # Instr i65 Next-Use:
    #   v_fd_main_s2 -> N/A
    # Instr i64 Next-Use:
    #   #t11 -> N/A
    #   v_result_main_s2 -> N/A
    # Instr i63 Next-Use:
    #   #t11 -> N/A
    #   ferror_i -> N/A
    # Instr i62 Next-Use:
    #   v_fd_main_s2 -> N/A
    # Instr i61 Next-Use:
    #   #t10 -> N/A
    #   v_result_main_s2 -> N/A
    # Instr i60 Next-Use:
    #   #t10 -> N/A
    #   feof_i -> N/A
    # Instr i59 Next-Use:
    #   v_fd_main_s2 -> N/A
    # Instr i58 Next-Use:
    #   #t9 -> N/A
    #   v_ch_main_s2 -> N/A
    # Instr i57 Next-Use:
    #   #t9 -> N/A
    #   fgetc_i -> N/A
    # Instr i56 Next-Use:
    #   v_fd_main_s2 -> N/A
    # Instr i55 Next-Use:
    #   #t8 -> N/A
    #   v_result_main_s2 -> N/A
    # Instr i54 Next-Use:
    #   #t8 -> N/A
    #   fclose_i -> i66
    # Instr i53 Next-Use:
    #   v_fd_main_s2 -> N/A
    # Instr i52 Next-Use:
    #   #t7 -> N/A
    #   fprintf_i_cp1_i -> N/A
    # Instr i51 Next-Use:
    # Instr i50 Next-Use:
    # Instr i49 Next-Use:
    #   v_fd_main_s2 -> N/A
    # Instr i48 Next-Use:
    #   #t6 -> N/A
    #   fputs_cp1_i -> N/A
    # Instr i47 Next-Use:
    #   v_fd_main_s2 -> N/A
    # Instr i46 Next-Use:
    # Instr i45 Next-Use:
    #   #t5 -> N/A
    #   fputc_i_i -> N/A
    # Instr i44 Next-Use:
    #   v_fd_main_s2 -> N/A
    # Instr i43 Next-Use:
    # Instr i42 Next-Use:
    #   #t4 -> N/A
    #   fputc_i_i -> i45
    # Instr i41 Next-Use:
    #   v_fd_main_s2 -> N/A
    # Instr i40 Next-Use:
    # Instr i39 Next-Use:
    #   #t3 -> N/A
    #   fputc_i_i -> i42
    # Instr i38 Next-Use:
    #   v_fd_main_s2 -> N/A
    # Instr i37 Next-Use:
    # Instr i36 Next-Use:
    #   #t2 -> N/A
    #   fputc_i_i -> i39
    # Instr i35 Next-Use:
    #   v_fd_main_s2 -> N/A
    # Instr i34 Next-Use:
    # Instr i33 Next-Use:
    #   #t1 -> N/A
    #   fputc_i_i -> i36
    # Instr i32 Next-Use:
    #   v_fd_main_s2 -> N/A
    # Instr i31 Next-Use:
    # Instr i30 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B21 ===

    # Next-use information computed
    # TAC 30: 31: function begin : main
I31:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 108 bytes
    addiu $sp, $sp, -108
    # Allocate 108 bytes (8 for $ra+$fp, 108 for locals/temps)
    sw $ra, 104($sp)
    # Save return address at 112($sp)
    sw $fp, 100($sp)
    # Save old frame pointer at 108($sp)
    addiu $fp, $sp, 100
    # Set new frame pointer (points to saved old $fp)

    # TAC 31: 32: param 72
I32:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 72
    # DEBUG: Collected parameter #1: 72

    # TAC 32: 33: param v_fd_main_s2
I33:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_fd_main_s2
    # DEBUG: Collected parameter #2: v_fd_main_s2

    # TAC 33: 34: #t1 = call fputc_i_i, 2
I34:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fputc_i_i with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: fputc ===
    # DEBUG: Loaded v_fd_main_s2 from memory at -4($fp)
    # === End fputc ===
    addiu $sp, $sp, -8
    li $t0, 72
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

    # TAC 34: 35: param 101
I35:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 101
    # DEBUG: Collected parameter #1: 101

    # TAC 35: 36: param v_fd_main_s2
I36:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_fd_main_s2
    # DEBUG: Collected parameter #2: v_fd_main_s2

    # TAC 36: 37: #t2 = call fputc_i_i, 2
I37:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t1] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fputc_i_i with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_fd_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t1 from $t1 to -16($fp)
    # === End Caller-Save ===
    # === Call library function: fputc ===
    # DEBUG: Loaded v_fd_main_s2 from memory at -4($fp)
    # === End fputc ===
    sw $t0, -4($fp)
    sw $t1, -16($fp)
    addiu $sp, $sp, -8
    li $t0, 101
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

    # TAC 37: 38: param 108
I38:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 108
    # DEBUG: Collected parameter #1: 108

    # TAC 38: 39: param v_fd_main_s2
I39:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_fd_main_s2
    # DEBUG: Collected parameter #2: v_fd_main_s2

    # TAC 39: 40: #t3 = call fputc_i_i, 2
I40:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fputc_i_i with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_fd_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t2 from $t1 to -20($fp)
    # === End Caller-Save ===
    # === Call library function: fputc ===
    # DEBUG: Loaded v_fd_main_s2 from memory at -4($fp)
    # === End fputc ===
    sw $t0, -4($fp)
    sw $t1, -20($fp)
    addiu $sp, $sp, -8
    li $t0, 108
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

    # TAC 40: 41: param 108
I41:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 108
    # DEBUG: Collected parameter #1: 108

    # TAC 41: 42: param v_fd_main_s2
I42:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_fd_main_s2
    # DEBUG: Collected parameter #2: v_fd_main_s2

    # TAC 42: 43: #t4 = call fputc_i_i, 2
I43:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fputc_i_i with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_fd_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t3 from $t1 to -24($fp)
    # === End Caller-Save ===
    # === Call library function: fputc ===
    # DEBUG: Loaded v_fd_main_s2 from memory at -4($fp)
    # === End fputc ===
    sw $t0, -4($fp)
    sw $t1, -24($fp)
    addiu $sp, $sp, -8
    li $t0, 108
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

    # TAC 43: 44: param 111
I44:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 111
    # DEBUG: Collected parameter #1: 111

    # TAC 44: 45: param v_fd_main_s2
I45:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_fd_main_s2
    # DEBUG: Collected parameter #2: v_fd_main_s2

    # TAC 45: 46: #t5 = call fputc_i_i, 2
I46:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t4] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fputc_i_i with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_fd_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t4 from $t1 to -28($fp)
    # === End Caller-Save ===
    # === Call library function: fputc ===
    # DEBUG: Loaded v_fd_main_s2 from memory at -4($fp)
    # === End fputc ===
    sw $t0, -4($fp)
    sw $t1, -28($fp)
    addiu $sp, $sp, -8
    li $t0, 111
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

    # TAC 46: 47: param "World from fputs"
I47:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "World from fputs"
    # DEBUG: Collected parameter #1: "World from fputs"

    # TAC 47: 48: param v_fd_main_s2
I48:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_fd_main_s2
    # DEBUG: Collected parameter #2: v_fd_main_s2

    # TAC 48: 49: #t6 = call fputs_cp1_i, 2
I49:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fputs_cp1_i with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_fd_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t5 from $t1 to -32($fp)
    # === End Caller-Save ===
    # === Call library function: fputs ===
    # DEBUG: Loaded v_fd_main_s2 from memory at -4($fp)
    # === End fputs ===
    sw $t0, -4($fp)
    sw $t1, -32($fp)
    addiu $sp, $sp, -8
    la $t0, str_0
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputs
    addiu $sp, $sp, 8
    move $t1, $v0

    # TAC 49: 50: param v_fd_main_s2
I50:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_fd_main_s2
    # DEBUG: Collected parameter #1: v_fd_main_s2

    # TAC 50: 51: param "Number: "
I51:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "Number: "
    # DEBUG: Collected parameter #2: "Number: "

    # TAC 51: 52: param 42
I52:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 42
    # DEBUG: Collected parameter #3: 42

    # TAC 52: 53: #t7 = call fprintf_i_cp1_i, 3
I53:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fprintf_i_cp1_i with 3 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_fd_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t6 from $t1 to -36($fp)
    # === End Caller-Save ===
    # === Call library function: fprintf (variadic) ===
    # DEBUG: Loaded v_fd_main_s2 from memory at -4($fp)
    sw $t0, -4($fp)
    # === End fprintf ===
    sw $t1, -36($fp)
    addiu $sp, $sp, -12
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    la $t0, str_1
    sw $t0, 4($sp)
    li $t0, 42
    sw $t0, 8($sp)
    jal __lib_fprintf
    addiu $sp, $sp, 12
    move $t1, $v0

    # TAC 53: 54: param v_fd_main_s2
I54:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [memory:-36($fp)]
    # #t7: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_fd_main_s2
    # DEBUG: Collected parameter #1: v_fd_main_s2

    # TAC 54: 55: #t8 = call fclose_i, 1
I55:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [memory:-36($fp)]
    # #t7: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fclose_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_fd_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t7 from $t1 to -40($fp)
    # === End Caller-Save ===
    # === Call library function: fclose ===
    # DEBUG: Loaded v_fd_main_s2 from memory at -4($fp)
    # === End fclose ===
    sw $t0, -4($fp)
    sw $t1, -40($fp)
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_fclose
    addiu $sp, $sp, 4
    move $t1, $v0

    # TAC 55: 56: v_result_main_s2 = #t8
I56:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [memory:-36($fp)]
    # #t7: [memory:-40($fp)]
    # #t8: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_result_main_s2 = #t8
    # DEBUG: #t8 already in $t1
    # DEBUG: v_result_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_result_main_s2 to memory at -12($fp)
    sw $t1, -12($fp)

    # TAC 56: 57: param v_fd_main_s2
I57:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t8, v_result_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [memory:-36($fp)]
    # #t7: [memory:-40($fp)]
    # #t8: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_result_main_s2: [$t1, memory:-12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_fd_main_s2
    # DEBUG: Collected parameter #1: v_fd_main_s2

    # TAC 57: 58: #t9 = call fgetc_i, 1
I58:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t8, v_result_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [memory:-36($fp)]
    # #t7: [memory:-40($fp)]
    # #t8: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_result_main_s2: [$t1, memory:-12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fgetc_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_fd_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t8 from $t1 to -44($fp)
    # DEBUG: Spilled v_result_main_s2 from $t1 to -12($fp)
    # === End Caller-Save ===
    # === Call library function: fgetc ===
    # DEBUG: Loaded v_fd_main_s2 from memory at -4($fp)
    # === End fgetc ===
    sw $t0, -4($fp)
    sw $t1, -44($fp)
    sw $t1, -12($fp)
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_fgetc
    addiu $sp, $sp, 4
    move $t1, $v0

    # TAC 58: 59: v_ch_main_s2 = #t9
I59:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [memory:-36($fp)]
    # #t7: [memory:-40($fp)]
    # #t8: [memory:-44($fp)]
    # #t9: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_result_main_s2: [memory:-12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_ch_main_s2 = #t9
    # DEBUG: #t9 already in $t1
    # DEBUG: v_ch_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_ch_main_s2 to memory at -8($fp)
    sw $t1, -8($fp)

    # TAC 59: 60: param v_fd_main_s2
I60:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t9, v_ch_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [memory:-36($fp)]
    # #t7: [memory:-40($fp)]
    # #t8: [memory:-44($fp)]
    # #t9: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_ch_main_s2: [$t1, memory:-8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_result_main_s2: [memory:-12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_fd_main_s2
    # DEBUG: Collected parameter #1: v_fd_main_s2

    # TAC 60: 61: #t10 = call feof_i, 1
I61:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t9, v_ch_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [memory:-36($fp)]
    # #t7: [memory:-40($fp)]
    # #t8: [memory:-44($fp)]
    # #t9: [$t1]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_ch_main_s2: [$t1, memory:-8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_result_main_s2: [memory:-12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call feof_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_fd_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t9 from $t1 to -48($fp)
    # DEBUG: Spilled v_ch_main_s2 from $t1 to -8($fp)
    # === End Caller-Save ===
    # === Call library function: feof ===
    # DEBUG: Loaded v_fd_main_s2 from memory at -4($fp)
    # === End feof ===
    sw $t0, -4($fp)
    sw $t1, -48($fp)
    sw $t1, -8($fp)
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_feof
    addiu $sp, $sp, 4
    move $t1, $v0

    # TAC 61: 62: v_result_main_s2 = #t10
I62:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t10: [$t1]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [memory:-36($fp)]
    # #t7: [memory:-40($fp)]
    # #t8: [memory:-44($fp)]
    # #t9: [memory:-48($fp)]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_ch_main_s2: [memory:-8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_result_main_s2: [memory:-12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_result_main_s2 = #t10
    # DEBUG: #t10 already in $t1
    # DEBUG: v_result_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_result_main_s2 to memory at -12($fp)
    sw $t1, -12($fp)

    # TAC 62: 63: param v_fd_main_s2
I63:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t10, v_result_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t10: [$t1]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [memory:-36($fp)]
    # #t7: [memory:-40($fp)]
    # #t8: [memory:-44($fp)]
    # #t9: [memory:-48($fp)]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_ch_main_s2: [memory:-8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_result_main_s2: [$t1, memory:-12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_fd_main_s2
    # DEBUG: Collected parameter #1: v_fd_main_s2

    # TAC 63: 64: #t11 = call ferror_i, 1
I64:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t10, v_result_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t10: [$t1]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [memory:-36($fp)]
    # #t7: [memory:-40($fp)]
    # #t8: [memory:-44($fp)]
    # #t9: [memory:-48($fp)]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_ch_main_s2: [memory:-8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_result_main_s2: [$t1, memory:-12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call ferror_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_fd_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t10 from $t1 to -52($fp)
    # DEBUG: Spilled v_result_main_s2 from $t1 to -12($fp)
    # === End Caller-Save ===
    # === Call library function: ferror ===
    # DEBUG: Loaded v_fd_main_s2 from memory at -4($fp)
    # === End ferror ===
    sw $t0, -4($fp)
    sw $t1, -52($fp)
    sw $t1, -12($fp)
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_ferror
    addiu $sp, $sp, 4
    move $t1, $v0

    # TAC 64: 65: v_result_main_s2 = #t11
I65:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t10: [memory:-52($fp)]
    # #t11: [$t1]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [memory:-36($fp)]
    # #t7: [memory:-40($fp)]
    # #t8: [memory:-44($fp)]
    # #t9: [memory:-48($fp)]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_ch_main_s2: [memory:-8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_result_main_s2: [memory:-12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_result_main_s2 = #t11
    # DEBUG: #t11 already in $t1
    # DEBUG: v_result_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_result_main_s2 to memory at -12($fp)
    sw $t1, -12($fp)

    # TAC 65: 66: param v_fd_main_s2
I66:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t11, v_result_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t10: [memory:-52($fp)]
    # #t11: [$t1]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [memory:-36($fp)]
    # #t7: [memory:-40($fp)]
    # #t8: [memory:-44($fp)]
    # #t9: [memory:-48($fp)]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_ch_main_s2: [memory:-8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_result_main_s2: [$t1, memory:-12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_fd_main_s2
    # DEBUG: Collected parameter #1: v_fd_main_s2

    # TAC 66: 67: #t12 = call fclose_i, 1
I67:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t11, v_result_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t10: [memory:-52($fp)]
    # #t11: [$t1]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [memory:-36($fp)]
    # #t7: [memory:-40($fp)]
    # #t8: [memory:-44($fp)]
    # #t9: [memory:-48($fp)]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_ch_main_s2: [memory:-8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_result_main_s2: [$t1, memory:-12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fclose_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_fd_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t11 from $t1 to -56($fp)
    # DEBUG: Spilled v_result_main_s2 from $t1 to -12($fp)
    # === End Caller-Save ===
    # === Call library function: fclose ===
    # DEBUG: Loaded v_fd_main_s2 from memory at -4($fp)
    # === End fclose ===
    sw $t0, -4($fp)
    sw $t1, -56($fp)
    sw $t1, -12($fp)
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_fclose
    addiu $sp, $sp, 4
    move $t1, $v0

    # TAC 67: 68: v_result_main_s2 = #t12
I68:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t12] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t10: [memory:-52($fp)]
    # #t11: [memory:-56($fp)]
    # #t12: [$t1]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [memory:-36($fp)]
    # #t7: [memory:-40($fp)]
    # #t8: [memory:-44($fp)]
    # #t9: [memory:-48($fp)]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_ch_main_s2: [memory:-8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_result_main_s2: [memory:-12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_result_main_s2 = #t12
    # DEBUG: #t12 already in $t1
    # DEBUG: v_result_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_result_main_s2 to memory at -12($fp)
    sw $t1, -12($fp)

    # TAC 68: 69: return 0
I69:
    # --- Register Descriptor ---
    # $t0: [v_fd_main_s2]
    # $t1: [#t12, v_result_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t10: [memory:-52($fp)]
    # #t11: [memory:-56($fp)]
    # #t12: [$t1]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [memory:-36($fp)]
    # #t7: [memory:-40($fp)]
    # #t8: [memory:-44($fp)]
    # #t9: [memory:-48($fp)]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_ch_main_s2: [memory:-8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_result_main_s2: [$t1, memory:-12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t12 from $t1 to memory at -60($fp)
    # DEBUG: Spilled v_result_main_s2 from $t1 to memory at -12($fp)
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    sw $t1, -60($fp)
    sw $t1, -12($fp)
    li $v0, 0


    # ======================================
    # === B22_i69_i69 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B22 ===
    # Instr i69 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B22 ===

    # Next-use information computed
    # TAC 69: 70: end function main
I70:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t1: [memory:-16($fp)]
    # #t10: [memory:-52($fp)]
    # #t11: [memory:-56($fp)]
    # #t12: [memory:-60($fp)]
    # #t2: [memory:-20($fp)]
    # #t3: [memory:-24($fp)]
    # #t4: [memory:-28($fp)]
    # #t5: [memory:-32($fp)]
    # #t6: [memory:-36($fp)]
    # #t7: [memory:-40($fp)]
    # #t8: [memory:-44($fp)]
    # #t9: [memory:-48($fp)]
    # v_addr_fscanf_i_cp1_ip1_s2: [memory:16($fp)]
    # v_arg1_fprintf_i_cp1_i_s2: [memory:16($fp)]
    # v_buffer_fgets_cp1_i_i_s2: [memory:8($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_ch_main_s2: [memory:-8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_ferror_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fgets_cp1_i_i_s2: [memory:16($fp)]
    # v_fd_fprintf_i_cp1_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_fd_fscanf_i_cp1_ip1_s2: [memory:8($fp)]
    # v_fd_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_format_fprintf_i_cp1_i_s2: [memory:12($fp)]
    # v_format_fscanf_i_cp1_ip1_s2: [memory:12($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_result_main_s2: [memory:-12($fp)]
    # v_size_fgets_cp1_i_i_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
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
__lib_fclose:
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    lw $a0, 8($fp)   # file descriptor
    li $v0, 16       # syscall 16: close file
    syscall
    # $v0 contains result (0 or -1)
    
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


#==============================================================================
__lib_feof:
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    # In MARS simulator, we can't directly check EOF
    # Return 0 for now (not at EOF)
    # A real implementation would track file state
    li $v0, 0
    
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


#==============================================================================
__lib_ferror:
    addiu $sp, $sp, -8
    sw $ra, 4($sp)
    sw $fp, 0($sp)
    move $fp, $sp
    
    # In MARS simulator, we can't directly check errors
    # Return 0 for now (no error)
    # A real implementation would track error state
    li $v0, 0
    
    move $sp, $fp
    lw $ra, 4($fp)
    lw $fp, 0($fp)
    addiu $sp, $sp, 8
    jr $ra


#==============================================================================
__lib_fgetc:
    addiu $sp, $sp, -12
    sw $ra, 8($sp)
    sw $fp, 4($sp)
    sw $s0, 0($sp)
    move $fp, $sp
    
    lw $a0, 12($fp)  # file descriptor
    
    # Allocate 1 byte on stack to read into
    addiu $sp, $sp, -4
    move $a1, $sp    # buffer address
    li $a2, 1        # read 1 byte
    li $v0, 14       # syscall 14: read from file
    syscall
    
    # Check if read was successful
    blez $v0, fgetc_error
    
    # Load the character
    lb $v0, 0($sp)
    addiu $sp, $sp, 4
    j fgetc_done

fgetc_error:
    addiu $sp, $sp, 4
    li $v0, -1       # Return -1 on error

fgetc_done:
    move $sp, $fp
    lw $s0, 0($sp)
    lw $fp, 4($sp)
    lw $ra, 8($sp)
    addiu $sp, $sp, 12
    jr $ra


#==============================================================================
__lib_fprintf:
    addiu $sp, $sp, -20
    sw $ra, 16($sp)
    sw $fp, 12($sp)
    sw $s0, 8($sp)
    sw $s1, 4($sp)
    sw $s2, 0($sp)
    move $fp, $sp
    
    lw $s0, 20($fp)  # file descriptor
    lw $s1, 24($fp)  # format string
    
    # Pointer to variadic arguments
    addiu $s2, $fp, 28
    
    li $t9, 0        # Character count

fprintf_loop:
    lb $t1, 0($s1)
    beqz $t1, fprintf_end
    
    li $t2, 37       # '%'
    bne $t1, $t2, fprintf_print_char
    
    # Format specifier
    addiu $s1, $s1, 1
    lb $t1, 0($s1)
    beqz $t1, fprintf_end
    
    li $t2, 100      # 'd' - integer
    beq $t1, $t2, fprintf_int
    
    li $t2, 99       # 'c' - char
    beq $t1, $t2, fprintf_char
    
    li $t2, 115      # 's' - string
    beq $t1, $t2, fprintf_string
    
    # Default: print the character
    j fprintf_print_char

fprintf_int:
    # Convert integer to string and write (simplified: write placeholder)
    lw $t3, 0($s2)
    addiu $s2, $s2, 4
    # For simplicity, we'll skip actual conversion and just increment counter
    addiu $t9, $t9, 1
    j fprintf_continue

fprintf_char:
    # Write character to file
    lw $t3, 0($s2)
    addiu $s2, $s2, 4
    
    addiu $sp, $sp, -4
    sb $t3, 0($sp)
    
    move $a0, $s0
    move $a1, $sp
    li $a2, 1
    li $v0, 15
    syscall
    
    addiu $sp, $sp, 4
    addiu $t9, $t9, 1
    j fprintf_continue

fprintf_string:
    # Write string to file (call fputs internally)
    lw $a1, 0($s2)
    addiu $s2, $s2, 4
    move $a0, $s0
    
    # Calculate string length and write
    move $t4, $a1
    li $t5, 0
fprintf_str_len:
    lb $t6, 0($t4)
    beqz $t6, fprintf_str_write
    addiu $t4, $t4, 1
    addiu $t5, $t5, 1
    j fprintf_str_len

fprintf_str_write:
    move $a2, $t5
    li $v0, 15
    syscall
    add $t9, $t9, $v0
    j fprintf_continue

fprintf_print_char:
    # Write regular character
    addiu $sp, $sp, -4
    sb $t1, 0($sp)
    
    move $a0, $s0
    move $a1, $sp
    li $a2, 1
    li $v0, 15
    syscall
    
    addiu $sp, $sp, 4
    addiu $t9, $t9, 1

fprintf_continue:
    addiu $s1, $s1, 1
    j fprintf_loop

fprintf_end:
    move $v0, $t9
    
    move $sp, $fp
    lw $s2, 0($sp)
    lw $s1, 4($sp)
    lw $s0, 8($sp)
    lw $fp, 12($sp)
    lw $ra, 16($sp)
    addiu $sp, $sp, 20
    jr $ra


#==============================================================================
__lib_fputc:
    addiu $sp, $sp, -12
    sw $ra, 8($sp)
    sw $fp, 4($sp)
    sw $s0, 0($sp)
    move $fp, $sp
    
    lw $t0, 12($fp)  # character to write
    lw $a0, 16($fp)  # file descriptor
    
    # Store character on stack temporarily
    addiu $sp, $sp, -4
    sb $t0, 0($sp)
    move $a1, $sp    # buffer address
    li $a2, 1        # write 1 byte
    li $v0, 15       # syscall 15: write to file
    syscall
    
    # Check if write was successful
    blez $v0, fputc_error
    
    # Return the character written
    lb $v0, 0($sp)
    addiu $sp, $sp, 4
    j fputc_done

fputc_error:
    addiu $sp, $sp, 4
    li $v0, -1       # Return -1 on error

fputc_done:
    move $sp, $fp
    lw $s0, 0($sp)
    lw $fp, 4($sp)
    lw $ra, 8($sp)
    addiu $sp, $sp, 12
    jr $ra


#==============================================================================
__lib_fputs:
    addiu $sp, $sp, -12
    sw $ra, 8($sp)
    sw $fp, 4($sp)
    sw $s0, 0($sp)
    move $fp, $sp
    
    lw $s0, 12($fp)  # string address
    lw $a0, 16($fp)  # file descriptor
    
    # Calculate string length
    move $t0, $s0
    li $t1, 0

fputs_strlen:
    lb $t2, 0($t0)
    beqz $t2, fputs_write
    addiu $t0, $t0, 1
    addiu $t1, $t1, 1
    j fputs_strlen

fputs_write:
    move $a1, $s0    # buffer address
    move $a2, $t1    # length
    li $v0, 15       # syscall 15: write to file
    syscall
    
    # $v0 contains bytes written or -1 on error
    
    move $sp, $fp
    lw $s0, 0($sp)
    lw $fp, 4($sp)
    lw $ra, 8($sp)
    addiu $sp, $sp, 12
    jr $ra


#==============================================================================
# END OF RUNTIME LIBRARY
#==============================================================================

