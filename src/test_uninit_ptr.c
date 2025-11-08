void print_int(int x) { return; }
void print_newline() { return; }

int main(){
    int **x;
    int *y;
    int a;
    y=&a;
    *(x)=y;
    *y=10;
    print_int(a); // should print 10
    print_newline();
    **x=20;
    print_int(a); // should print 20
    print_newline();
    return 0;
}
