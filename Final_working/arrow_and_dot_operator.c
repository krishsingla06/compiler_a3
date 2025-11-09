

// //#include <stdio.h>
void print_int(int n) { return; }
void print_newline() { return; }


struct Point {
    int x;
    int y;
};

int main() {
    struct Point p;
    struct Point *ptr;
    ptr = &p;
    ptr->x = 100;
    ptr->y = 200;
    print_int(p.x); // should print 100
    print_newline();
    print_int(p.y); // should print 200
    print_newline();
    
    return 0;
}