void printf(char* c, ...){return;}

//struct

struct Point {
    int x;
    int y;
};

int main() {
    struct Point p;
    p.x = 10;
    p.y = 20;
    printf("Point x: %d\n", p.x); // should print 10
    printf("Point y: %d\n", p.y); // should print 20
    
    return 0;
}