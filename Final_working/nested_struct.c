

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
    float num = 9.7;
    float* pnum = &num;
    struct k var;
    struct k*ptr;
    printf("Address of num: \n");
    ptr = &var;
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
    printf("-----------------------\n");
    ptr->a = 20;
    ptr->b = 88.5;
    ptr->c = 'y';
    ptr->d.x = 50;
    ptr->d.y = 150;
    printf("%d\n", ptr->a);
    printf("%f\n", ptr->b);
    printf("%c\n", ptr->c);
    printf("%d\n", ptr->d.x);
    printf("%d\n", ptr->d.y);
    return 0;
}
