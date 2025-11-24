void printf(char* format, ...){
    return;
}

void scanf(char* format, ...){
    return;
}

struct Point {
    int x;
    int y;
};

int foo(struct Point& p){
    p.x = p.x + 5;
    p.y = p.y + 10;
    return 0;
}

int main(){
    struct Point p1;
    p1.x = 10;
    p1.y = 20;
    printf("Before foo call: p1.x = %d, p1.y = %d\n", p1.x, p1.y);
    foo(p1);
    printf("After foo call: p1.x = %d, p1.y = %d\n", p1.x, p1.y);
    return 0;
}