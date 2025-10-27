int add(int x, int y){
    return x + y;
}

int subtract(int x, int y){
    return x - y;
}

int apply_operation(int (*operation)(int, int), int a, int b){
    int x;
    x=1;
    return operation(a, b);
}

int main(){
    // function pointer 
    int (*funcPtr)(int, int)=add;
    int result1=funcPtr(5, 3); // Calls add function
    funcPtr=subtract;
    result1=funcPtr(5, 3); // Calls subtract function
    return 0;
}