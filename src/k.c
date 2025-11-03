int foo(int x,int y){
    int p;
    int q;
    p=1;
    q=2;
    return p+q+x+y;
}

int main(){
    int a;
    int b;
    float c;
    char d;
    int e;
    a=3;
    b=4;
    a = b+c+foo(a,b);
    {
        int innera;
        int arr[10];
        char innerc;
        int innerd;
        innera=5;
    }
    return foo(a,b);
}