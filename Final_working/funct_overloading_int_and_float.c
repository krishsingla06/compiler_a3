void printf(char* c, ...){return;}

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
    printf("Result 1: %d\n", r1);
    printf("Result 2: %d\n", r2);
    return r1 + r2;
}


