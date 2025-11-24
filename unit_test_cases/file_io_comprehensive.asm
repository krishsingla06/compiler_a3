    # ======================================
    #   MIPS Assembly Code Generation
    # ======================================

    # Total TAC instructions: 114

    # ======================================
    #   Collecting Data Section Items
    # ======================================
    # Added string literal: str_0 = ""Opening file for writing...""
    # Added string literal: str_1 = ""File opened successfully""
    # Added string literal: str_2 = ""This is a test string""
    # Added string literal: str_3 = ""File closed""
    # Added string literal: str_4 = ""Opening file for reading...""
    # Added string literal: str_5 = ""Reading characters:""
    # Added string literal: str_6 = ""File closed after reading""
    # Added string literal: str_7 = ""File I/O test completed""
    # Found 8 string literals

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
    # Block B17: i24-i28
    # Block B18: i29-i29
    # Block B19: i30-i31
    # Block B20: i32-i32
    # Block B21: i33-i33
    # Block B22: i34-i34
    # Block B23: i35-i62
    # Block B24: i63-i66
    # Block B25: i67-i67
    # Block B26: i68-i69
    # Block B27: i70-i70
    # Block B28: i71-i71
    # Block B29: i72-i72
    # Block B30: i73-i109
    # Block B31: i110-i112
    # Block B32: i113-i113

.data
    # String Literals
str_7: .asciiz "File I/O test completed"
str_6: .asciiz "File closed after reading"
str_3: .asciiz "File closed"
str_1: .asciiz "File opened successfully"
str_4: .asciiz "Opening file for reading..."
str_0: .asciiz "Opening file for writing..."
str_5: .asciiz "Reading characters:"
str_2: .asciiz "This is a test string"

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
    #   fputs_cp1_i -> N/A
    # === End of Next-Use Computation for Block B9 ===

    # Next-use information computed
    # TAC 12: 13: function begin : fputs_cp1_i
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


    # TAC 13: 14: return 0
I14:
    # --- Register Descriptor ---
    # $a0: [v_str_fputs_cp1_i_s2]
    # $a1: [v_fd_fputs_cp1_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [$a1, memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [$a0, memory:8($fp)]
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
    #   fputs_cp1_i -> N/A
    # === End of Next-Use Computation for Block B10 ===

    # Next-use information computed
    # TAC 14: 15: end function fputs_cp1_i
I15:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
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
    # === B11_i15_i16 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B11 ===
    # Instr i16 Next-Use:
    # Instr i15 Next-Use:
    #   feof_i -> N/A
    # === End of Next-Use Computation for Block B11 ===

    # Next-use information computed
    # TAC 15: 16: function begin : feof_i
I16:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
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


    # TAC 16: 17: return 0
I17:
    # --- Register Descriptor ---
    # $a0: [v_fd_feof_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [$a0, memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
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
    #   feof_i -> N/A
    # === End of Next-Use Computation for Block B12 ===

    # Next-use information computed
    # TAC 17: 18: end function feof_i
I18:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
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
    # === B13_i18_i19 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B13 ===
    # Instr i19 Next-Use:
    # Instr i18 Next-Use:
    #   print_int_i -> N/A
    # === End of Next-Use Computation for Block B13 ===

    # Next-use information computed
    # TAC 18: 19: function begin : print_int_i
I19:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
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
    # DEBUG: Parameter 0 (v_x_print_int_i_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_x_print_int_i_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 19: 20: return 0
I20:
    # --- Register Descriptor ---
    # $a0: [v_x_print_int_i_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [$a0, memory:8($fp)]
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
    #   print_int_i -> N/A
    # === End of Next-Use Computation for Block B14 ===

    # Next-use information computed
    # TAC 20: 21: end function print_int_i
I21:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
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
    # === B15_i21_i22 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B15 ===
    # Instr i22 Next-Use:
    # Instr i21 Next-Use:
    #   print_string_cp1 -> N/A
    # === End of Next-Use Computation for Block B15 ===

    # Next-use information computed
    # TAC 21: 22: function begin : print_string_cp1
I22:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
print_string_cp1:
    # Function: print_string_cp1
    # === Function Prologue for print_string_cp1 ===
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
    # DEBUG: Parameter 0 (v_s_print_string_cp1_s2) at 8($fp)
    # DEBUG: Integer parameter 0 (v_s_print_string_cp1_s2) in $a0
    # === End Parameter Initialization ===


    # TAC 22: 23: return 0
I23:
    # --- Register Descriptor ---
    # $a0: [v_s_print_string_cp1_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [$a0, memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
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
    #   print_string_cp1 -> N/A
    # === End of Next-Use Computation for Block B16 ===

    # Next-use information computed
    # TAC 23: 24: end function print_string_cp1
I24:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # === Function Epilogue for print_string_cp1 ===
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
    # End of function: print_string_cp1


    # ======================================
    # === B17_i24_i28 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B17 ===
    # Instr i28 Next-Use:
    #   #t2 -> N/A
    #   v_file_write_main_s2 -> N/A
    # Instr i27 Next-Use:
    #   #t2 -> N/A
    # Instr i26 Next-Use:
    #   #t1 -> N/A
    #   print_string_cp1 -> N/A
    # Instr i25 Next-Use:
    # Instr i24 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B17 ===

    # Next-use information computed
    # TAC 24: 25: function begin : main
I25:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
main:
    # Function: main
    # === Function Prologue for main ===
    # Frame size: 192 bytes
    addiu $sp, $sp, -192
    # Allocate 192 bytes (8 for $ra+$fp, 192 for locals/temps)
    sw $ra, 188($sp)
    # Save return address at 196($sp)
    sw $fp, 184($sp)
    # Save old frame pointer at 192($sp)
    addiu $fp, $sp, 184
    # Set new frame pointer (points to saved old $fp)

    # TAC 25: 26: param "Opening file for writing..."
I26:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "Opening file for writing..."
    # DEBUG: Collected parameter #1: "Opening file for writing..."

    # TAC 26: 27: #t1 = call print_string_cp1, 1
I27:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_string_cp1 with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: print_string ===
    # DEBUG: Loaded "Opening file for writing..." from memory at 0($fp)
    # === End print_string ===
    lw $t0, 0($fp)
    move $a0, $t0
    jal __lib_print_string

    # TAC 27: 28: #t2 = - 1
I28:
    # --- Register Descriptor ---
    # $t0: ["Opening file for writing..."]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Opening file for writing...": [$t0]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t2 = -1
    # DEBUG: Loaded negated constant -1 into $t1
    # DEBUG: #t2 in $t1 (dirty)
    li $t1, -1

    # TAC 28: 29: if v_file_write_main_s2 != #t2 goto I31
I29:
    # --- Register Descriptor ---
    # $t0: ["Opening file for writing..."]
    # $t1: [#t2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Opening file for writing...": [$t0]
    # #t2: [$t1]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t2 from $t1 to memory at -24($fp)
    # if v_file_write_main_s2 != #t2 goto I31
    # DEBUG: Loaded v_file_write_main_s2 from memory at -4($fp)
    # DEBUG: v_file_write_main_s2 in $t2
    # DEBUG: #t2 in $t1
    # Branch to I31 if condition true
    sw $t1, -24($fp)
    lw $t2, -4($fp)
    bne $t2, $t1, I31


    # ======================================
    # === B18_i29_i29 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B18 ===
    # Instr i29 Next-Use:
    # === End of Next-Use Computation for Block B18 ===

    # Next-use information computed
    # TAC 29: 30: goto I33
I30:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-24($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I33
    j I33


    # ======================================
    # === B19_i30_i31 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B19 ===
    # Instr i31 Next-Use:
    # Instr i30 Next-Use:
    #   #t3 -> N/A
    #   1 -> N/A
    # === End of Next-Use Computation for Block B19 ===

    # Next-use information computed
    # TAC 30: 31: #t3 = 1
I31:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-24($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t3 = 1
    # DEBUG: #t3 = constant 1 loaded in $t0 (dirty)
    li $t0, 1

    # TAC 31: 32: goto I34
I32:
    # --- Register Descriptor ---
    # $t0: [#t3] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-24($fp)]
    # #t3: [$t0]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t3 from $t0 to memory at -28($fp)
    # Unconditional jump to I34
    sw $t0, -28($fp)
    j I34


    # ======================================
    # === B20_i32_i32 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B20 ===
    # Instr i32 Next-Use:
    #   #t3 -> N/A
    #   0 -> N/A
    # === End of Next-Use Computation for Block B20 ===

    # Next-use information computed
    # TAC 32: 33: #t3 = 0
I33:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t3 = 0
    # DEBUG: #t3 = constant 0 loaded in $t0 (dirty)
    li $t0, 0

    # End of block B20 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t3 from $t0 to memory at -28($fp)

    sw $t0, -28($fp)
    # ======================================
    # === B21_i33_i33 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B21 ===
    # Instr i33 Next-Use:
    #   #t3 -> N/A
    # === End of Next-Use Computation for Block B21 ===

    # Next-use information computed
    # TAC 33: 34: if #t3   goto I36
I34:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t3 ?? 0 goto I36
    # DEBUG: Loaded #t3 from memory at -28($fp)
    # DEBUG: #t3 in $t0
    # Branch to I36 if condition true
    lw $t0, -28($fp)
    bne $t0, $zero, I36


    # ======================================
    # === B22_i34_i34 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B22 ===
    # Instr i34 Next-Use:
    # === End of Next-Use Computation for Block B22 ===

    # Next-use information computed
    # TAC 34: 35: goto I64
I35:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I64
    j I64


    # ======================================
    # === B23_i35_i62 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B23 ===
    # Instr i62 Next-Use:
    #   #t13 -> N/A
    #   print_string_cp1 -> N/A
    # Instr i61 Next-Use:
    # Instr i60 Next-Use:
    #   #t12 -> N/A
    #   v_status_main_s2 -> N/A
    # Instr i59 Next-Use:
    #   #t12 -> N/A
    #   fclose_i -> N/A
    # Instr i58 Next-Use:
    #   v_file_write_main_s2 -> N/A
    # Instr i57 Next-Use:
    #   #t11 -> N/A
    #   fputs_cp1_i -> N/A
    # Instr i56 Next-Use:
    #   v_file_write_main_s2 -> N/A
    # Instr i55 Next-Use:
    # Instr i54 Next-Use:
    #   #t10 -> N/A
    #   fputc_i_i -> N/A
    # Instr i53 Next-Use:
    #   v_file_write_main_s2 -> N/A
    # Instr i52 Next-Use:
    # Instr i51 Next-Use:
    #   #t9 -> N/A
    #   fputc_i_i -> i54
    # Instr i50 Next-Use:
    #   v_file_write_main_s2 -> N/A
    # Instr i49 Next-Use:
    # Instr i48 Next-Use:
    #   #t8 -> N/A
    #   fputc_i_i -> i51
    # Instr i47 Next-Use:
    #   v_file_write_main_s2 -> N/A
    # Instr i46 Next-Use:
    # Instr i45 Next-Use:
    #   #t7 -> N/A
    #   fputc_i_i -> i48
    # Instr i44 Next-Use:
    #   v_file_write_main_s2 -> N/A
    # Instr i43 Next-Use:
    # Instr i42 Next-Use:
    #   #t6 -> N/A
    #   fputc_i_i -> i45
    # Instr i41 Next-Use:
    #   v_file_write_main_s2 -> N/A
    # Instr i40 Next-Use:
    # Instr i39 Next-Use:
    #   #t5 -> N/A
    #   fputc_i_i -> i42
    # Instr i38 Next-Use:
    #   v_file_write_main_s2 -> N/A
    # Instr i37 Next-Use:
    # Instr i36 Next-Use:
    #   #t4 -> N/A
    #   print_string_cp1 -> i62
    # Instr i35 Next-Use:
    # === End of Next-Use Computation for Block B23 ===

    # Next-use information computed
    # TAC 35: 36: param "File opened successfully"
I36:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "File opened successfully"
    # DEBUG: Collected parameter #1: "File opened successfully"

    # TAC 36: 37: #t4 = call print_string_cp1, 1
I37:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_string_cp1 with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: print_string ===
    # DEBUG: Loaded "File opened successfully" from memory at 0($fp)
    # === End print_string ===
    lw $t0, 0($fp)
    move $a0, $t0
    jal __lib_print_string

    # TAC 37: 38: param 72
I38:
    # --- Register Descriptor ---
    # $t0: ["File opened successfully"]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 72
    # DEBUG: Collected parameter #1: 72

    # TAC 38: 39: param v_file_write_main_s2
I39:
    # --- Register Descriptor ---
    # $t0: ["File opened successfully"]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_file_write_main_s2
    # DEBUG: Collected parameter #2: v_file_write_main_s2

    # TAC 39: 40: #t5 = call fputc_i_i, 2
I40:
    # --- Register Descriptor ---
    # $t0: ["File opened successfully"]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fputc_i_i with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: fputc ===
    # DEBUG: Loaded v_file_write_main_s2 from memory at -4($fp)
    # === End fputc ===
    addiu $sp, $sp, -8
    li $t0, 72
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

    # TAC 40: 41: param 101
I41:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [$t1]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 101
    # DEBUG: Collected parameter #1: 101

    # TAC 41: 42: param v_file_write_main_s2
I42:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [$t1]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_file_write_main_s2
    # DEBUG: Collected parameter #2: v_file_write_main_s2

    # TAC 42: 43: #t6 = call fputc_i_i, 2
I43:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t5] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [$t1]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fputc_i_i with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_file_write_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t5 from $t1 to -36($fp)
    # === End Caller-Save ===
    # === Call library function: fputc ===
    # DEBUG: Loaded v_file_write_main_s2 from memory at -4($fp)
    # === End fputc ===
    sw $t0, -4($fp)
    sw $t1, -36($fp)
    addiu $sp, $sp, -8
    li $t0, 101
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

    # TAC 43: 44: param 108
I44:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [$t1]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 108
    # DEBUG: Collected parameter #1: 108

    # TAC 44: 45: param v_file_write_main_s2
I45:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [$t1]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_file_write_main_s2
    # DEBUG: Collected parameter #2: v_file_write_main_s2

    # TAC 45: 46: #t7 = call fputc_i_i, 2
I46:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t6] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [$t1]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fputc_i_i with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_file_write_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t6 from $t1 to -40($fp)
    # === End Caller-Save ===
    # === Call library function: fputc ===
    # DEBUG: Loaded v_file_write_main_s2 from memory at -4($fp)
    # === End fputc ===
    sw $t0, -4($fp)
    sw $t1, -40($fp)
    addiu $sp, $sp, -8
    li $t0, 108
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

    # TAC 46: 47: param 108
I47:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [$t1]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 108
    # DEBUG: Collected parameter #1: 108

    # TAC 47: 48: param v_file_write_main_s2
I48:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [$t1]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_file_write_main_s2
    # DEBUG: Collected parameter #2: v_file_write_main_s2

    # TAC 48: 49: #t8 = call fputc_i_i, 2
I49:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t7] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [$t1]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fputc_i_i with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_file_write_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t7 from $t1 to -44($fp)
    # === End Caller-Save ===
    # === Call library function: fputc ===
    # DEBUG: Loaded v_file_write_main_s2 from memory at -4($fp)
    # === End fputc ===
    sw $t0, -4($fp)
    sw $t1, -44($fp)
    addiu $sp, $sp, -8
    li $t0, 108
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

    # TAC 49: 50: param 111
I50:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [$t1]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 111
    # DEBUG: Collected parameter #1: 111

    # TAC 50: 51: param v_file_write_main_s2
I51:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [$t1]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_file_write_main_s2
    # DEBUG: Collected parameter #2: v_file_write_main_s2

    # TAC 51: 52: #t9 = call fputc_i_i, 2
I52:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t8] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [$t1]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fputc_i_i with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_file_write_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t8 from $t1 to -48($fp)
    # === End Caller-Save ===
    # === Call library function: fputc ===
    # DEBUG: Loaded v_file_write_main_s2 from memory at -4($fp)
    # === End fputc ===
    sw $t0, -4($fp)
    sw $t1, -48($fp)
    addiu $sp, $sp, -8
    li $t0, 111
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

    # TAC 52: 53: param 10
I53:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [$t1]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param 10
    # DEBUG: Collected parameter #1: 10

    # TAC 53: 54: param v_file_write_main_s2
I54:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [$t1]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_file_write_main_s2
    # DEBUG: Collected parameter #2: v_file_write_main_s2

    # TAC 54: 55: #t10 = call fputc_i_i, 2
I55:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t9] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [$t1]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fputc_i_i with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_file_write_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t9 from $t1 to -52($fp)
    # === End Caller-Save ===
    # === Call library function: fputc ===
    # DEBUG: Loaded v_file_write_main_s2 from memory at -4($fp)
    # === End fputc ===
    sw $t0, -4($fp)
    sw $t1, -52($fp)
    addiu $sp, $sp, -8
    li $t0, 10
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputc
    addiu $sp, $sp, 8
    move $t1, $v0

    # TAC 55: 56: param "This is a test string"
I56:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t10: [$t1]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "This is a test string"
    # DEBUG: Collected parameter #1: "This is a test string"

    # TAC 56: 57: param v_file_write_main_s2
I57:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t10: [$t1]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_file_write_main_s2
    # DEBUG: Collected parameter #2: v_file_write_main_s2

    # TAC 57: 58: #t11 = call fputs_cp1_i, 2
I58:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t10] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t10: [$t1]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fputs_cp1_i with 2 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_file_write_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t10 from $t1 to -56($fp)
    # === End Caller-Save ===
    # === Call library function: fputs ===
    # DEBUG: Loaded v_file_write_main_s2 from memory at -4($fp)
    # === End fputs ===
    sw $t0, -4($fp)
    sw $t1, -56($fp)
    addiu $sp, $sp, -8
    la $t0, str_2
    sw $t0, 0($sp)
    lw $t0, -4($fp)
    sw $t0, 4($sp)
    jal __lib_fputs
    addiu $sp, $sp, 8
    move $t1, $v0

    # TAC 58: 59: param v_file_write_main_s2
I59:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [$t1]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_file_write_main_s2
    # DEBUG: Collected parameter #1: v_file_write_main_s2

    # TAC 59: 60: #t12 = call fclose_i, 1
I60:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t11] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [$t1]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fclose_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_file_write_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t11 from $t1 to -60($fp)
    # === End Caller-Save ===
    # === Call library function: fclose ===
    # DEBUG: Loaded v_file_write_main_s2 from memory at -4($fp)
    # === End fclose ===
    sw $t0, -4($fp)
    sw $t1, -60($fp)
    addiu $sp, $sp, -4
    lw $t0, -4($fp)
    sw $t0, 0($sp)
    jal __lib_fclose
    addiu $sp, $sp, 4
    move $t1, $v0

    # TAC 60: 61: v_status_main_s2 = #t12
I61:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t12] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [$t1]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_status_main_s2 = #t12
    # DEBUG: #t12 already in $t1
    # DEBUG: v_status_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_status_main_s2 to memory at -12($fp)
    sw $t1, -12($fp)

    # TAC 61: 62: param "File closed"
I62:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t12, v_status_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [$t1]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [$t1, memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "File closed"
    # DEBUG: Collected parameter #1: "File closed"

    # TAC 62: 63: #t13 = call print_string_cp1, 1
I63:
    # --- Register Descriptor ---
    # $t0: [v_file_write_main_s2]
    # $t1: [#t12, v_status_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File opened successfully": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [$t1]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [$t0, memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [$t1, memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_string_cp1 with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_file_write_main_s2 from $t0 to -4($fp)
    # DEBUG: Spilled #t12 from $t1 to -64($fp)
    # DEBUG: Spilled v_status_main_s2 from $t1 to -12($fp)
    # === End Caller-Save ===
    # === Call library function: print_string ===
    # DEBUG: Loaded "File closed" from memory at 0($fp)
    # === End print_string ===
    sw $t0, -4($fp)
    sw $t1, -64($fp)
    sw $t1, -12($fp)
    lw $t0, 0($fp)
    move $a0, $t0
    jal __lib_print_string

    # End of block B23 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B24_i63_i66 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B24 ===
    # Instr i66 Next-Use:
    #   #t15 -> N/A
    #   v_file_read_main_s2 -> N/A
    # Instr i65 Next-Use:
    #   #t15 -> N/A
    # Instr i64 Next-Use:
    #   #t14 -> N/A
    #   print_string_cp1 -> N/A
    # Instr i63 Next-Use:
    # === End of Next-Use Computation for Block B24 ===

    # Next-use information computed
    # TAC 63: 64: param "Opening file for reading..."
I64:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "Opening file for reading..."
    # DEBUG: Collected parameter #1: "Opening file for reading..."

    # TAC 64: 65: #t14 = call print_string_cp1, 1
I65:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_string_cp1 with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: print_string ===
    # DEBUG: Loaded "Opening file for reading..." from memory at 0($fp)
    # === End print_string ===
    lw $t0, 0($fp)
    move $a0, $t0
    jal __lib_print_string

    # TAC 65: 66: #t15 = - 1
I66:
    # --- Register Descriptor ---
    # $t0: ["Opening file for reading..."]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Opening file for reading...": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # #t15 = -1
    # DEBUG: Loaded negated constant -1 into $t1
    # DEBUG: #t15 in $t1 (dirty)
    li $t1, -1

    # TAC 66: 67: if v_file_read_main_s2 != #t15 goto I69
I67:
    # --- Register Descriptor ---
    # $t0: ["Opening file for reading..."]
    # $t1: [#t15] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Opening file for reading...": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [$t1]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t15 from $t1 to memory at -76($fp)
    # if v_file_read_main_s2 != #t15 goto I69
    # DEBUG: Loaded v_file_read_main_s2 from memory at -8($fp)
    # DEBUG: v_file_read_main_s2 in $t2
    # DEBUG: #t15 in $t1
    # Branch to I69 if condition true
    sw $t1, -76($fp)
    lw $t2, -8($fp)
    bne $t2, $t1, I69


    # ======================================
    # === B25_i67_i67 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B25 ===
    # Instr i67 Next-Use:
    # === End of Next-Use Computation for Block B25 ===

    # Next-use information computed
    # TAC 67: 68: goto I71
I68:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I71
    j I71


    # ======================================
    # === B26_i68_i69 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B26 ===
    # Instr i69 Next-Use:
    # Instr i68 Next-Use:
    #   #t16 -> N/A
    #   1 -> N/A
    # === End of Next-Use Computation for Block B26 ===

    # Next-use information computed
    # TAC 68: 69: #t16 = 1
I69:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t16 = 1
    # DEBUG: #t16 = constant 1 loaded in $t0 (dirty)
    li $t0, 1

    # TAC 69: 70: goto I72
I70:
    # --- Register Descriptor ---
    # $t0: [#t16] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [$t0]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t16 from $t0 to memory at -80($fp)
    # Unconditional jump to I72
    sw $t0, -80($fp)
    j I72


    # ======================================
    # === B27_i70_i70 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B27 ===
    # Instr i70 Next-Use:
    #   #t16 -> N/A
    #   0 -> N/A
    # === End of Next-Use Computation for Block B27 ===

    # Next-use information computed
    # TAC 70: 71: #t16 = 0
I71:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: #t16 = 0
    # DEBUG: #t16 = constant 0 loaded in $t0 (dirty)
    li $t0, 0

    # End of block B27 - spilling all registers
    # DEBUG: Spilling 1 dirty registers
    # DEBUG: Spilled #t16 from $t0 to memory at -80($fp)

    sw $t0, -80($fp)
    # ======================================
    # === B28_i71_i71 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B28 ===
    # Instr i71 Next-Use:
    #   #t16 -> N/A
    # === End of Next-Use Computation for Block B28 ===

    # Next-use information computed
    # TAC 71: 72: if #t16   goto I74
I72:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # if #t16 ?? 0 goto I74
    # DEBUG: Loaded #t16 from memory at -80($fp)
    # DEBUG: #t16 in $t0
    # Branch to I74 if condition true
    lw $t0, -80($fp)
    bne $t0, $zero, I74


    # ======================================
    # === B29_i72_i72 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B29 ===
    # Instr i72 Next-Use:
    # === End of Next-Use Computation for Block B29 ===

    # Next-use information computed
    # TAC 72: 73: goto I111
I73:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # Unconditional jump to I111
    j I111


    # ======================================
    # === B30_i73_i109 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B30 ===
    # Instr i109 Next-Use:
    #   #t31 -> N/A
    #   print_string_cp1 -> N/A
    # Instr i108 Next-Use:
    # Instr i107 Next-Use:
    #   #t30 -> N/A
    #   v_status_main_s2 -> N/A
    # Instr i106 Next-Use:
    #   #t30 -> N/A
    #   fclose_i -> N/A
    # Instr i105 Next-Use:
    #   v_file_read_main_s2 -> N/A
    # Instr i104 Next-Use:
    #   #t29 -> N/A
    #   print_int_i -> N/A
    # Instr i103 Next-Use:
    #   v_status_main_s2 -> N/A
    # Instr i102 Next-Use:
    #   #t28 -> N/A
    #   v_status_main_s2 -> N/A
    # Instr i101 Next-Use:
    #   #t28 -> N/A
    #   feof_i -> N/A
    # Instr i100 Next-Use:
    #   v_file_read_main_s2 -> N/A
    # Instr i99 Next-Use:
    #   #t27 -> N/A
    #   print_int_i -> i104
    # Instr i98 Next-Use:
    #   v_character_main_s2 -> N/A
    # Instr i97 Next-Use:
    #   #t26 -> N/A
    #   v_character_main_s2 -> N/A
    # Instr i96 Next-Use:
    #   #t26 -> N/A
    #   fgetc_i -> N/A
    # Instr i95 Next-Use:
    #   v_file_read_main_s2 -> N/A
    # Instr i94 Next-Use:
    #   #t25 -> N/A
    #   print_int_i -> i99
    # Instr i93 Next-Use:
    #   v_character_main_s2 -> N/A
    # Instr i92 Next-Use:
    #   #t24 -> N/A
    #   v_character_main_s2 -> N/A
    # Instr i91 Next-Use:
    #   #t24 -> N/A
    #   fgetc_i -> i96
    # Instr i90 Next-Use:
    #   v_file_read_main_s2 -> N/A
    # Instr i89 Next-Use:
    #   #t23 -> N/A
    #   print_int_i -> i94
    # Instr i88 Next-Use:
    #   v_character_main_s2 -> N/A
    # Instr i87 Next-Use:
    #   #t22 -> N/A
    #   v_character_main_s2 -> N/A
    # Instr i86 Next-Use:
    #   #t22 -> N/A
    #   fgetc_i -> i91
    # Instr i85 Next-Use:
    #   v_file_read_main_s2 -> N/A
    # Instr i84 Next-Use:
    #   #t21 -> N/A
    #   print_int_i -> i89
    # Instr i83 Next-Use:
    #   v_character_main_s2 -> N/A
    # Instr i82 Next-Use:
    #   #t20 -> N/A
    #   v_character_main_s2 -> N/A
    # Instr i81 Next-Use:
    #   #t20 -> N/A
    #   fgetc_i -> i86
    # Instr i80 Next-Use:
    #   v_file_read_main_s2 -> N/A
    # Instr i79 Next-Use:
    #   #t19 -> N/A
    #   print_int_i -> i84
    # Instr i78 Next-Use:
    #   v_character_main_s2 -> N/A
    # Instr i77 Next-Use:
    #   #t18 -> N/A
    #   v_character_main_s2 -> N/A
    # Instr i76 Next-Use:
    #   #t18 -> N/A
    #   fgetc_i -> i81
    # Instr i75 Next-Use:
    #   v_file_read_main_s2 -> N/A
    # Instr i74 Next-Use:
    #   #t17 -> N/A
    #   print_string_cp1 -> i109
    # Instr i73 Next-Use:
    # === End of Next-Use Computation for Block B30 ===

    # Next-use information computed
    # TAC 73: 74: param "Reading characters:"
I74:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "Reading characters:"
    # DEBUG: Collected parameter #1: "Reading characters:"

    # TAC 74: 75: #t17 = call print_string_cp1, 1
I75:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_string_cp1 with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: print_string ===
    # DEBUG: Loaded "Reading characters:" from memory at 0($fp)
    # === End print_string ===
    lw $t0, 0($fp)
    move $a0, $t0
    jal __lib_print_string

    # TAC 75: 76: param v_file_read_main_s2
I76:
    # --- Register Descriptor ---
    # $t0: ["Reading characters:"]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_file_read_main_s2
    # DEBUG: Collected parameter #1: v_file_read_main_s2

    # TAC 76: 77: #t18 = call fgetc_i, 1
I77:
    # --- Register Descriptor ---
    # $t0: ["Reading characters:"]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fgetc_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: fgetc ===
    # DEBUG: Loaded v_file_read_main_s2 from memory at -8($fp)
    # === End fgetc ===
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_fgetc
    addiu $sp, $sp, 4
    move $t1, $v0

    # TAC 77: 78: v_character_main_s2 = #t18
I78:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t18] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [$t1]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_character_main_s2 = #t18
    # DEBUG: #t18 already in $t1
    # DEBUG: v_character_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_character_main_s2 to memory at -16($fp)
    sw $t1, -16($fp)

    # TAC 78: 79: param v_character_main_s2
I79:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t18, v_character_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [$t1]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t1, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_character_main_s2
    # DEBUG: Collected parameter #1: v_character_main_s2

    # TAC 79: 80: #t19 = call print_int_i, 1
I80:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t18, v_character_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [$t1]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t1, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_file_read_main_s2 from $t0 to -8($fp)
    # DEBUG: Spilled #t18 from $t1 to -88($fp)
    # DEBUG: Spilled v_character_main_s2 from $t1 to -16($fp)
    # === End Caller-Save ===
    # === Call library function: print_int ===
    # DEBUG: Loaded v_character_main_s2 from memory at -16($fp)
    # === End print_int ===
    sw $t0, -8($fp)
    sw $t1, -88($fp)
    sw $t1, -16($fp)
    lw $t0, -16($fp)
    move $a0, $t0
    jal __lib_print_int

    # TAC 80: 81: param v_file_read_main_s2
I81:
    # --- Register Descriptor ---
    # $t0: [v_character_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t0, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_file_read_main_s2
    # DEBUG: Collected parameter #1: v_file_read_main_s2

    # TAC 81: 82: #t20 = call fgetc_i, 1
I82:
    # --- Register Descriptor ---
    # $t0: [v_character_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t0, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fgetc_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_character_main_s2 from $t0 to -16($fp)
    # === End Caller-Save ===
    # === Call library function: fgetc ===
    # DEBUG: Loaded v_file_read_main_s2 from memory at -8($fp)
    # === End fgetc ===
    sw $t0, -16($fp)
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_fgetc
    addiu $sp, $sp, 4
    move $t1, $v0

    # TAC 82: 83: v_character_main_s2 = #t20
I83:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t20] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [$t1]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_character_main_s2 = #t20
    # DEBUG: #t20 already in $t1
    # DEBUG: v_character_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_character_main_s2 to memory at -16($fp)
    sw $t1, -16($fp)

    # TAC 83: 84: param v_character_main_s2
I84:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t20, v_character_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [$t1]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t1, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_character_main_s2
    # DEBUG: Collected parameter #1: v_character_main_s2

    # TAC 84: 85: #t21 = call print_int_i, 1
I85:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t20, v_character_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [$t1]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t1, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_file_read_main_s2 from $t0 to -8($fp)
    # DEBUG: Spilled #t20 from $t1 to -96($fp)
    # DEBUG: Spilled v_character_main_s2 from $t1 to -16($fp)
    # === End Caller-Save ===
    # === Call library function: print_int ===
    # DEBUG: Loaded v_character_main_s2 from memory at -16($fp)
    # === End print_int ===
    sw $t0, -8($fp)
    sw $t1, -96($fp)
    sw $t1, -16($fp)
    lw $t0, -16($fp)
    move $a0, $t0
    jal __lib_print_int

    # TAC 85: 86: param v_file_read_main_s2
I86:
    # --- Register Descriptor ---
    # $t0: [v_character_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t0, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_file_read_main_s2
    # DEBUG: Collected parameter #1: v_file_read_main_s2

    # TAC 86: 87: #t22 = call fgetc_i, 1
I87:
    # --- Register Descriptor ---
    # $t0: [v_character_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t0, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fgetc_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_character_main_s2 from $t0 to -16($fp)
    # === End Caller-Save ===
    # === Call library function: fgetc ===
    # DEBUG: Loaded v_file_read_main_s2 from memory at -8($fp)
    # === End fgetc ===
    sw $t0, -16($fp)
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_fgetc
    addiu $sp, $sp, 4
    move $t1, $v0

    # TAC 87: 88: v_character_main_s2 = #t22
I88:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t22] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [$t1]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_character_main_s2 = #t22
    # DEBUG: #t22 already in $t1
    # DEBUG: v_character_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_character_main_s2 to memory at -16($fp)
    sw $t1, -16($fp)

    # TAC 88: 89: param v_character_main_s2
I89:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t22, v_character_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [$t1]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t1, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_character_main_s2
    # DEBUG: Collected parameter #1: v_character_main_s2

    # TAC 89: 90: #t23 = call print_int_i, 1
I90:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t22, v_character_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [$t1]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t1, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_file_read_main_s2 from $t0 to -8($fp)
    # DEBUG: Spilled #t22 from $t1 to -104($fp)
    # DEBUG: Spilled v_character_main_s2 from $t1 to -16($fp)
    # === End Caller-Save ===
    # === Call library function: print_int ===
    # DEBUG: Loaded v_character_main_s2 from memory at -16($fp)
    # === End print_int ===
    sw $t0, -8($fp)
    sw $t1, -104($fp)
    sw $t1, -16($fp)
    lw $t0, -16($fp)
    move $a0, $t0
    jal __lib_print_int

    # TAC 90: 91: param v_file_read_main_s2
I91:
    # --- Register Descriptor ---
    # $t0: [v_character_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t0, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_file_read_main_s2
    # DEBUG: Collected parameter #1: v_file_read_main_s2

    # TAC 91: 92: #t24 = call fgetc_i, 1
I92:
    # --- Register Descriptor ---
    # $t0: [v_character_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t0, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fgetc_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_character_main_s2 from $t0 to -16($fp)
    # === End Caller-Save ===
    # === Call library function: fgetc ===
    # DEBUG: Loaded v_file_read_main_s2 from memory at -8($fp)
    # === End fgetc ===
    sw $t0, -16($fp)
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_fgetc
    addiu $sp, $sp, 4
    move $t1, $v0

    # TAC 92: 93: v_character_main_s2 = #t24
I93:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t24] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [$t1]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_character_main_s2 = #t24
    # DEBUG: #t24 already in $t1
    # DEBUG: v_character_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_character_main_s2 to memory at -16($fp)
    sw $t1, -16($fp)

    # TAC 93: 94: param v_character_main_s2
I94:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t24, v_character_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [$t1]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t1, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_character_main_s2
    # DEBUG: Collected parameter #1: v_character_main_s2

    # TAC 94: 95: #t25 = call print_int_i, 1
I95:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t24, v_character_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [$t1]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t1, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_file_read_main_s2 from $t0 to -8($fp)
    # DEBUG: Spilled #t24 from $t1 to -112($fp)
    # DEBUG: Spilled v_character_main_s2 from $t1 to -16($fp)
    # === End Caller-Save ===
    # === Call library function: print_int ===
    # DEBUG: Loaded v_character_main_s2 from memory at -16($fp)
    # === End print_int ===
    sw $t0, -8($fp)
    sw $t1, -112($fp)
    sw $t1, -16($fp)
    lw $t0, -16($fp)
    move $a0, $t0
    jal __lib_print_int

    # TAC 95: 96: param v_file_read_main_s2
I96:
    # --- Register Descriptor ---
    # $t0: [v_character_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t0, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_file_read_main_s2
    # DEBUG: Collected parameter #1: v_file_read_main_s2

    # TAC 96: 97: #t26 = call fgetc_i, 1
I97:
    # --- Register Descriptor ---
    # $t0: [v_character_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t0, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fgetc_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_character_main_s2 from $t0 to -16($fp)
    # === End Caller-Save ===
    # === Call library function: fgetc ===
    # DEBUG: Loaded v_file_read_main_s2 from memory at -8($fp)
    # === End fgetc ===
    sw $t0, -16($fp)
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_fgetc
    addiu $sp, $sp, 4
    move $t1, $v0

    # TAC 97: 98: v_character_main_s2 = #t26
I98:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t26] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t26: [$t1]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_character_main_s2 = #t26
    # DEBUG: #t26 already in $t1
    # DEBUG: v_character_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_character_main_s2 to memory at -16($fp)
    sw $t1, -16($fp)

    # TAC 98: 99: param v_character_main_s2
I99:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t26, v_character_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t26: [$t1]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t1, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_character_main_s2
    # DEBUG: Collected parameter #1: v_character_main_s2

    # TAC 99: 100: #t27 = call print_int_i, 1
I100:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t26, v_character_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t26: [$t1]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t1, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_file_read_main_s2 from $t0 to -8($fp)
    # DEBUG: Spilled #t26 from $t1 to -120($fp)
    # DEBUG: Spilled v_character_main_s2 from $t1 to -16($fp)
    # === End Caller-Save ===
    # === Call library function: print_int ===
    # DEBUG: Loaded v_character_main_s2 from memory at -16($fp)
    # === End print_int ===
    sw $t0, -8($fp)
    sw $t1, -120($fp)
    sw $t1, -16($fp)
    lw $t0, -16($fp)
    move $a0, $t0
    jal __lib_print_int

    # TAC 100: 101: param v_file_read_main_s2
I101:
    # --- Register Descriptor ---
    # $t0: [v_character_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t26: [memory:-120($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t0, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_file_read_main_s2
    # DEBUG: Collected parameter #1: v_file_read_main_s2

    # TAC 101: 102: #t28 = call feof_i, 1
I102:
    # --- Register Descriptor ---
    # $t0: [v_character_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t26: [memory:-120($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [$t0, memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call feof_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_character_main_s2 from $t0 to -16($fp)
    # === End Caller-Save ===
    # === Call library function: feof ===
    # DEBUG: Loaded v_file_read_main_s2 from memory at -8($fp)
    # === End feof ===
    sw $t0, -16($fp)
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_feof
    addiu $sp, $sp, 4
    move $t1, $v0

    # TAC 102: 103: v_status_main_s2 = #t28
I103:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t28] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t26: [memory:-120($fp)]
    # #t28: [$t1]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_status_main_s2 = #t28
    # DEBUG: #t28 already in $t1
    # DEBUG: v_status_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_status_main_s2 to memory at -12($fp)
    sw $t1, -12($fp)

    # TAC 103: 104: param v_status_main_s2
I104:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t28, v_status_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t26: [memory:-120($fp)]
    # #t28: [$t1]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [$t1, memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_status_main_s2
    # DEBUG: Collected parameter #1: v_status_main_s2

    # TAC 104: 105: #t29 = call print_int_i, 1
I105:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t28, v_status_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t26: [memory:-120($fp)]
    # #t28: [$t1]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [$t1, memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_int_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_file_read_main_s2 from $t0 to -8($fp)
    # DEBUG: Spilled #t28 from $t1 to -128($fp)
    # DEBUG: Spilled v_status_main_s2 from $t1 to -12($fp)
    # === End Caller-Save ===
    # === Call library function: print_int ===
    # DEBUG: Loaded v_status_main_s2 from memory at -12($fp)
    # === End print_int ===
    sw $t0, -8($fp)
    sw $t1, -128($fp)
    sw $t1, -12($fp)
    lw $t0, -12($fp)
    move $a0, $t0
    jal __lib_print_int

    # TAC 105: 106: param v_file_read_main_s2
I106:
    # --- Register Descriptor ---
    # $t0: [v_status_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t26: [memory:-120($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [$t0, memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param v_file_read_main_s2
    # DEBUG: Collected parameter #1: v_file_read_main_s2

    # TAC 106: 107: #t30 = call fclose_i, 1
I107:
    # --- Register Descriptor ---
    # $t0: [v_status_main_s2]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t26: [memory:-120($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-28($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [$t0, memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call fclose_i with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_status_main_s2 from $t0 to -12($fp)
    # === End Caller-Save ===
    # === Call library function: fclose ===
    # DEBUG: Loaded v_file_read_main_s2 from memory at -8($fp)
    # === End fclose ===
    sw $t0, -12($fp)
    addiu $sp, $sp, -4
    lw $t0, -8($fp)
    sw $t0, 0($sp)
    jal __lib_fclose
    addiu $sp, $sp, 4
    move $t1, $v0

    # TAC 107: 108: v_status_main_s2 = #t30
I108:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t30] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t26: [memory:-120($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-28($fp)]
    # #t30: [$t1]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Assignment: v_status_main_s2 = #t30
    # DEBUG: #t30 already in $t1
    # DEBUG: v_status_main_s2 now also in $t1 (dirty)
    # DEBUG: Saved v_status_main_s2 to memory at -12($fp)
    sw $t1, -12($fp)

    # TAC 108: 109: param "File closed after reading"
I109:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t30, v_status_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t26: [memory:-120($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-28($fp)]
    # #t30: [$t1]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [$t1, memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "File closed after reading"
    # DEBUG: Collected parameter #1: "File closed after reading"

    # TAC 109: 110: #t31 = call print_string_cp1, 1
I110:
    # --- Register Descriptor ---
    # $t0: [v_file_read_main_s2]
    # $t1: [#t30, v_status_main_s2] (dirty)
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "Reading characters:": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t26: [memory:-120($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-28($fp)]
    # #t30: [$t1]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [$t0, memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [$t1, memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_string_cp1 with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # DEBUG: Spilled v_file_read_main_s2 from $t0 to -8($fp)
    # DEBUG: Spilled #t30 from $t1 to -136($fp)
    # DEBUG: Spilled v_status_main_s2 from $t1 to -12($fp)
    # === End Caller-Save ===
    # === Call library function: print_string ===
    # DEBUG: Loaded "File closed after reading" from memory at 0($fp)
    # === End print_string ===
    sw $t0, -8($fp)
    sw $t1, -136($fp)
    sw $t1, -12($fp)
    lw $t0, 0($fp)
    move $a0, $t0
    jal __lib_print_string

    # End of block B30 - spilling all registers
    # DEBUG: No dirty registers to spill

    # ======================================
    # === B31_i110_i112 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B31 ===
    # Instr i112 Next-Use:
    # Instr i111 Next-Use:
    #   #t32 -> N/A
    #   print_string_cp1 -> N/A
    # Instr i110 Next-Use:
    # === End of Next-Use Computation for Block B31 ===

    # Next-use information computed
    # TAC 110: 111: param "File I/O test completed"
I111:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t26: [memory:-120($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-28($fp)]
    # #t30: [memory:-136($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # param "File I/O test completed"
    # DEBUG: Collected parameter #1: "File I/O test completed"

    # TAC 111: 112: #t32 = call print_string_cp1, 1
I112:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t26: [memory:-120($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-28($fp)]
    # #t30: [memory:-136($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Call print_string_cp1 with 1 arguments
    # === Caller-Save: Spill ALL registers before call ===
    # === End Caller-Save ===
    # === Call library function: print_string ===
    # DEBUG: Loaded "File I/O test completed" from memory at 0($fp)
    # === End print_string ===
    lw $t0, 0($fp)
    move $a0, $t0
    jal __lib_print_string

    # TAC 112: 113: return 0
I113:
    # --- Register Descriptor ---
    # $t0: ["File I/O test completed"]
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # "File I/O test completed": [$t0]
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t26: [memory:-120($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-28($fp)]
    # #t30: [memory:-136($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
    # v_x_print_int_i_s2: [memory:8($fp)]
    # --- End Storage Descriptor ---
    # Spilling before control flow instruction
    # DEBUG: No dirty registers to spill
    # === Spilling all dirty registers before return ===
    # return 0
    # DEBUG: Return constant 0 in $v0
    li $v0, 0


    # ======================================
    # === B32_i113_i113 ===
    # ======================================
    # Registers cleared at block start
    # === Computing Next-Use Information for Block B32 ===
    # Instr i113 Next-Use:
    #   main -> N/A
    # === End of Next-Use Computation for Block B32 ===

    # Next-use information computed
    # TAC 113: 114: end function main
I114:
    # --- Register Descriptor ---
    # --- End Register Descriptor ---
    # --- Storage Descriptor ---
    # #t10: [memory:-56($fp)]
    # #t11: [memory:-60($fp)]
    # #t12: [memory:-64($fp)]
    # #t15: [memory:-76($fp)]
    # #t16: [memory:-80($fp)]
    # #t18: [memory:-88($fp)]
    # #t2: [memory:-24($fp)]
    # #t20: [memory:-96($fp)]
    # #t22: [memory:-104($fp)]
    # #t24: [memory:-112($fp)]
    # #t26: [memory:-120($fp)]
    # #t28: [memory:-128($fp)]
    # #t3: [memory:-28($fp)]
    # #t30: [memory:-136($fp)]
    # #t5: [memory:-36($fp)]
    # #t6: [memory:-40($fp)]
    # #t7: [memory:-44($fp)]
    # #t8: [memory:-48($fp)]
    # #t9: [memory:-52($fp)]
    # v_ch_fputc_i_i_s2: [memory:8($fp)]
    # v_character_main_s2: [memory:-16($fp)]
    # v_fd_fclose_i_s2: [memory:8($fp)]
    # v_fd_feof_i_s2: [memory:8($fp)]
    # v_fd_fgetc_i_s2: [memory:8($fp)]
    # v_fd_fputc_i_i_s2: [memory:12($fp)]
    # v_fd_fputs_cp1_i_s2: [memory:12($fp)]
    # v_file_read_main_s2: [memory:-8($fp)]
    # v_file_write_main_s2: [memory:-4($fp)]
    # v_filename_fopen_cp1_cp1_s2: [memory:8($fp)]
    # v_mode_fopen_cp1_cp1_s2: [memory:12($fp)]
    # v_s_print_string_cp1_s2: [memory:8($fp)]
    # v_status_main_s2: [memory:-12($fp)]
    # v_str_fputs_cp1_i_s2: [memory:8($fp)]
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

