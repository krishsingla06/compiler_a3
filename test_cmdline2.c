void printf(char* c, ...){return;}

int main(int argc, char** argv){
    printf("Number of arguments: %d\n", argc);
    
    if(argc > 0){
        printf("Program name: %s\n", argv[0]);
    }
    
    int i;
    i = 1;
    
    return 0;
}
