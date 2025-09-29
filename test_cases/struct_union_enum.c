struct Point {
    int x;
    int y;
};

union Data {
    int i;
    float f;
    char c;
};

enum Color {
    RED,
    GREEN,
    BLUE
};

int main() {
    struct Point p;
    union Data d;
    enum Color col;
    int sum = p.x + p.y;
    int value = d.i;
    float fval = d.f;
    char ch = d.c;
    int color_code = col;
    float* fptr = NULL;
    int* akad,bakad,bmbe,bo;
    struct Point* pp = &p;
    p.x = 10;
    p->y = 20;

    d.i = 100;
    d.f = 3.14;
    d.c = 'A';

   
    col = GREEN;

    // Use the variables in some way

    return 0;
}