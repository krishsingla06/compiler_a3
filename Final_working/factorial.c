void printf(char* c, ...){return;}

int factorial(int n){
    if(n==0){
        return 1;
    }
    else{
        return n * factorial(n-1);
    }
}

int main(){
    int x;
    x = factorial(5); // should return 120
    printf("Factorial result: %d\n", x);
    return x;
}