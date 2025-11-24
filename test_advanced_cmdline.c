void printf(char *format, ...){return ;}

int main(int argc, char **argv) {
    // Declare and initialize at top (order matters!)
    char *first_arg = argv[0];  // ✅ Initialize from parameter
    char first_char = first_arg[0];  // ✅ Now first_arg exists
    
    printf("argc = %d\n", argc);
    printf("argv address = %p\n", (void*)argv);
    printf("argv[0] address = %p\n", (void*)first_arg);
    printf("First char of argv[0] = %c (%d)\n", first_char, (int)first_char);
    
//     return 0;
//    printf("First char of argv[0] = %c (%d)\n", first_char, (int)first_char);
    
    return 0;
}
