// -------------------------------------
int main(){
    int i;
    int sum;
    sum = 0;

    // for mei kuch dikkat hai
    // for(i=1;i<=10;i++){
    //     if(i%2==0){
    //         sum = sum + i;
    //     }
    //     else{
    //         sum = sum + (i*2);
    //     }
    // }
    
    print_int(sum);
    print_newline();
    return sum; // should return 80
}

// multilevel arrays mei dikkat hai, like arr[2] tries to give derefernced value but wo address hona chahiye


int foo(int a, int b, int c, int d, int e){
    return a + b + c + d + e;
}
int main(){
    int x;
    x = foo(1,2,3,4,5); // should return 15
    print_int(x);
    print_newline();
    return x;
}

// -------------------------------------
// recursive function test
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
int main(){
    int i=10;
    int sum;
    sum = 0;
    while(i<=10){
        if(i==5){
            continue;
        }
        if(i==8){
            break;
        }
        sum = sum + i;
        i = i + 1;
    }
    print_int(sum); // should print 37 (1+2+3+4+6+7)
    print_newline();
    return sum; // should return 37
}}
