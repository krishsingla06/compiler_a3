
void printf(char* c, ...){return;}

int goo(int x,int y){
    int p;
    int q;
    q=x+y;
    p=q*2;
    return p+q;
}

int main(){
    int a;
    int b;
    int r;
    a=3;
    b=4;
    r=goo(a,b);
    printf("Result: %d\n", r);
    return r;
}