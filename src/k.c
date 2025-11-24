void printf(char* fmt, ...){ return; }

int add(int x, int y){
    return x + y;
}

int subtract(int x, int y){
    return x - y;
}

int apply_operation(int (*operation)(int, int), int a, int b){
    return operation(a, b);
}

int main(){
    int result1 = apply_operation(add, 5, 3);
    int result2 = apply_operation(subtract, 10, 4);
    printf("Result1: %d, Result2: %d\n", result1, result2); // should print 8 and 6
    return 0;
}
