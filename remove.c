// //rm -f *.cpp.debug *.cpp.errors *.cpp.functab *.cpp.globalsymtab *.cpp.jumptab *.cpp.symtab *.tac *.asm *.clean.asm
// //rm -f *.c.debug *.c.errors *.c.functab *.c.globalsymtab *.c.jumptab *.c.symtab *.tac *.asm *.clean.asm

// // I don't know is, 3ac wrong or assembly wrong for referenes and dereferences, like
// // 4: #t2 = * v_z_main_s2
// // 5: #t2 = 10

// // this was done, then expected was to write 10 at the location of t2 content as address. but upon analysing assembly, it is simply rewritting address as value of t2 with 10. 

// // you should do something like this
// // like whenever you see lik

// //------`
// I don't know is, 3ac wrong or assembly wrong for referenes and dereferences, like
// 4: #t2 = * v_z_main_s2
// 5: #t2 = 10

// this was done, then expected was to write 10 at the location of t2 content as address. but upon analysing assembly, it is simply rewritting address as value of t2 with 10. 

// you should do something like this
// like whenever you see like 

// for
// t1 = &x
// addi $t0, $fp, -4   # address of x (offset -4)
// sw $t0, t1($fp)     # store address into t1 slot

// for t2 = *p
// lw $t0, p($fp)       # load address from variable p
// lw $t1, 0($t0)       # load value from that address
// sw $t1, t2($fp)      # store value into t2

// *p = 10
// lw  $t0, p($fp)       # load address stored in p
// li  $t1, 10           # load value 10
// sw  $t1, 0($t0)       # store 10 into memory pointed by p


// but the problem is that, *p=10 types 3ac is not generated, but 

