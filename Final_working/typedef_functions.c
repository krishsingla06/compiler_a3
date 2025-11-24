void printf(char* fmt, ...){ return; }
void scanf(char* fmt, ...){ return; }

typedef int ok;
int f(ok x){
    return x+1;
}

int main(){
    // sizeof typedef aliases
    typedef int myint;
    typedef myint myint2;

    myint a = 5;
    myint2 b = 10;

    // typedef with function parameters
    int x = f(a);

    //typedef with typecasting
    typedef float decimal;
    decimal d = (decimal)(a) / (decimal)(b);

    printf("a: %d, b: %d\n",sizeof(a), sizeof(b));
    printf("x: %d\n", x);
    printf("d: %f\n", d);
    
    return 0;
}

