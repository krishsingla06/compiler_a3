

// //#include <stdio.h>
void printf(char* c, ...){return ;}


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
    printf("Point x: %d\n", p.x); // should print 100
    printf("Point y: %d\n", p.y); // should print 200
    
    return 0;
}