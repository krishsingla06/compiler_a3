// Test command-line arguments with char** argv syntax
void printf(char* c, ...){return;}

int main(int argc, char** argv){
    int i;
    
    printf("Total arguments: %d\n", argc);
    
    // Test 1: Access first argument (program name)
    if(argc > 0){
        printf("Program: %s\n", argv[0]);
    }
    
    // Test 2: Loop through all arguments
    i = 1;
    while(i < argc){
        printf("Arg[%d]: %s\n", i, argv[i]);
        i = i + 1;
    }
    
    // Test 3: Direct access
    if(argc > 1){
        printf("First arg: %s\n", argv[1]);
    }
    
    if(argc > 2){
        printf("Second arg: %s\n", argv[2]);
    }
    
    return argc;
}
