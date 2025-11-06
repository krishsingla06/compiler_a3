void print_int(int n){
    return;
}

void print_newline(){
    return;
}

int foo(float x, float y) {
    int p;
    int q;
    p = 1;
    q = 2;
    return p + q + x + y;
}


int foo(int x, int y) {
    int p;
    int q;
    p = 1;
    q = 2;
    return p + q + x + y;
}

int main(){
    int a;
    int b;
    float c;
    float d;
    int r1,r2;
    a = 3;
    b = 4;
    c = 2.9;
    d = 3.9;
    r1 = foo(a,b);
    r2 = foo(c,d);
    print_int(r1);
    print_newline();
    print_int(r2);
    print_newline();
    return r1 + r2;
}


