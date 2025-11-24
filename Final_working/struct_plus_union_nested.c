void printf(char* fmt, ...){ return; }
void scanf(char* fmt, ...){ return; }

struct point {
    int x;
    int y;
};
union Data {
    int i;
    float f;
    char c;
    struct point p;
};



int main(){
    union Data data;
    data.p.x = 10;
    data.p.y = 20;
    printf("Point x: %d, y: %d\n", data.p.x, data.p.y); // should print 10 and 20
    data.i = 100;
    printf("Data as int: %d\n", data.i); // should print 100
    data.f = 220.5;
    printf("Data as float: %f\n", data.f); // should print 220.5
    data.c = 'A';
    printf("Data as char: %c\n", data.c); // should print 'A'
    
    return 0;
}