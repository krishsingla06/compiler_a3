// // void print_int(int i){return;}

// // void print_float(float f){return;}

// // void print_char(char c){return;}

// // void print_string(char* s){return;}

// // char myfunc(char inp){
// //     return inp;
// // }

// void printf(char* format, ...){return;}

// struct m{
//     int x;
//     int y;
// };

// struct k
// {
//     int a;
//     float b;
//     struct m d;
//     char c;
// };

// int main(){

//     struct k var;
//     var.a = 10;
//     var.b = 97.5;
//     var.c = 'z';
//     var.d.x = 5;
//     var.d.y = 15;
//     printf("%d\n", var.a);
//     printf("%f\n", var.b);
//     printf("%c\n", var.c);
//     printf("%d\n", var.d.x);
//     printf("%d\n", var.d.y);
//     // int *ptr;
//     // struct k var;
//     // var.a = 10;
//     // var.b = 20.5;
//     // var.c = 'z';
//     // var.d.x = 5;
//     // var.d.y = 15;
//     // int x = 'A'+5;
//     // char ch = x;
//     // print_int(x);
//     // print_newline();
//     // print_char(ch);
//     // print_newline();

    
//     //printf("%c\n", c);

//     // //print size of pointer
//     // print_int(sizeof(ptr));
//     // print_newline();
//     // //print size of struct k
//     // print_int(sizeof(var));
//     // print_newline();

//     // print all data members of struct k
//     // print_int(var.a);
//     // print_newline();

//     // print_float(var.b);
//     // print_newline();
//     // print_char(var.c);
//     // print_newline();
//     // print_int(var.d.x);
//     // print_newline();
//     // print_int(var.d.y);
//     // print_newline();
//     return 0;
// }



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
    struct k*ptr;
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
