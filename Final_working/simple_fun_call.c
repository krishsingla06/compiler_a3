
void print_int(int n){
    return;
}

void print_newline(){
    return;
}

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
    print_int(r);
    print_newline();
    return r;
}