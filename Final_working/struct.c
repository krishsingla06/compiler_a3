void print_int(int n) { return; }
void print_newline() { return; }

//struct

struct Point {
    int x;
    int y;
};

int main() {
    struct Point p;
    p.x = 10;
    p.y = 20;
    print_int(p.x); // should print 10
    print_newline();
    print_int(p.y); // should print 20
    print_newline();
    
    return 0;
}