
void printf(char* format, ...){return;}

struct m{
    int x;
    int y;
};

struct k
{
    int a;
    float b;
    struct m d;
    char c;
};

int main(){

    struct k var;
    var.a = 10;
    var.b = 97.5;
    var.c = 'z';
    var.d.x = 5;
    var.d.y = 15;
    printf("%d\n", var.a);
    printf("%f\n", var.b);
    printf("%c\n", var.c);
    printf("%d\n", var.d.x);
    printf("%d\n", var.d.y);
    return 0;
}
