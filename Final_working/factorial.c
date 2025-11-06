void print_int(int n){
    return;
}

void print_newline(){
    return;
}

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
    print_int(x);
    print_newline();
    return x;
}