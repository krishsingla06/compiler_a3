void printf(char* c, ...){return;}

int main(int argc, char** argv){
    int i;
    printf("Number of arguments: %d\n", argc);
        
    i = 1;
    
    // Print first argument (program name)
    if(argc > 0){
        printf("Program name: %s\n", argv[0]);
    }
    
    // Print remaining arguments
    while(i < argc){
        printf("Argument %d: %s\n", i, argv[i]);
        i = i + 1;
    }
    
    return 0;
}
