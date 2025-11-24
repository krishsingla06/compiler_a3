//void printf(char* c, ...){return;}
// // // int main(){
// // //     // int i = 5;
// // //     // int sum = 0;
// // //     // float f = 3.14;
    
// // //     // int added = i + 2;
// // //     // int subtracted = added - 1;
// // //     // int multiplied = subtracted * 3;
// // //     // int divided = multiplied / 2;
// // //     // int modulus = divided % 4;

// // //     // int subexpr1 = (2 + 3) * 4;
// // //     // int subexpr2 = 2 + (3 * 4);

// // //     // int less_than = (5 < 10);
// // //     // int greater_than = (10 > 5);
// // //     // int less_equal = (5 <= 5);
// // //     // int greater_equal = (6 >= 5);
// // //     // int equal = (5 == 5);
// // //     // int not_equal = (5 != 4);
// // //     // int logical_and = (1 && 0);
// // //     // int logical_or = (1 || 0);
// // //     // int logical_not = !logical_and;

// // //     // // short-circuit evaluation
// // //     // int sc1 = (0 && i);   // RHS not evaluated
// // //     // int sc2 = (1 || sum); // RHS not evaluated

// // //     // type conversion cases
// // //     // int type_conv1 = 5 && 10.5;  
// // //     // int type_conv2 = 5 || "hello";  
// // //     // int type_conv3 = !20.5;    

// // //     // printf("Modulus: %d\n", modulus);
// // //     // printf("Float f: %f\n", f);
// // //     // printf("Type conversion 1: %d\n", type_conv1);
// // //     // printf("Type conversion 2: %d\n", type_conv2);
// // //     // printf("Type conversion 3: %d\n", type_conv3);

// // //     // expected output : 
// // //     // 1
// // //     // 20.5
// // //     // 0
// // //     // 1
// // //     int x;
// // //     if(1+1.2){
// // //         x=10;
// // //     }else {
// // //         x=20;
// // //     }

// // //     printf("x: %d\n", x);

// // // }




// // //void printf(char* format, ...){return;}
// // #include <stdio.h>
// // struct m{
// //     int x;
// //     int y;
// // };

// // struct k
// // {
// //     int a;
// //     float b;
// //     struct m d;
// //     char c;
// // };

// // int main(){
// //     float num = 9.7;
// //     float* pnum = &num;
// //     struct k var;
// //     struct k*ptr;
// //     printf("Address of num: \n");
// //     ptr = &var;
// //     var.a = 10;
// //     var.b = 97.5;
// //     var.c = 'z';
// //     var.d.x = 5;
// //     var.d.y = 15;
// //     printf("%d\n", var.a);
// //     printf("%f\n", var.b);
// //     printf("%c\n", var.c);
// //     printf("%d\n", var.d.x);
// //     printf("%d\n", var.d.y);
// //     printf("-----------------------\n");
// //     ptr->a = 20;
// //     ptr->b = 88.5;
// //     ptr->c = 'y';
// //     ptr->d.x = 50;
// //     ptr->d.y = 150;
// //     printf("%d\n", ptr->a);
// //     printf("%f\n", ptr->b);
// //     printf("%c\n", ptr->c);
// //     printf("%d\n", ptr->d.x);
// //     printf("%d\n", ptr->d.y);
// //     return 0;
// // }


// //void printf(char* c, ...){return;}
// #include <stdio.h>
// int main(){
//     int i = 5;
//     int sum = 0;
//     float f = 3.14;
    
//     int added = i + 2;
//     int subtracted = added - 1;
//     int multiplied = subtracted * 3;
//     int divided = multiplied / 2;
//     int modulus = divided % 4;

//     int subexpr1 = (2 + 3) * 4;
//     int subexpr2 = 2 + (3 * 4);

//     int less_than = (5 < 10);
//     int greater_than = (10 > 5);
//     int less_equal = (5 <= 5);
//     int greater_equal = (6 >= 5);
//     int equal = (5 == 5);
//     int not_equal = (5 != 4);
//     int logical_and = (1 && 0);
//     int logical_or = (1 || 0);
//     int logical_not = !logical_and;

//     // short-circuit evaluation
//     int sc1 = (0 && i);   // RHS not evaluated
//     int sc2 = (1 || sum); // RHS not evaluated

//     // type conversion cases
//     int type_conv1 = 5 && 10.5;  
//     int type_conv2 = 5 || "hello";  
//     int type_conv3 = !20.5;    

//     printf("Modulus: %d\n", modulus);
//     printf("Float f: %f\n", f);
//     printf("Type conversion 1: %d\n", type_conv1);
//     printf("Type conversion 2: %d\n", type_conv2);
//     printf("Type conversion 3: %d\n", type_conv3);

//     // expected output : 
//     // 1
//     // 20.5
//     // 0
//     // 1

// }


// int main(){
//     int i=-3;
//     //int i=10;
//     //printf("i before switch: %d\n", i); // should print -3
//     switch (-3){
//         case 1:
//             i = 10;
//             break;
//         case -3:
//             i = 20;
//             break;
//         case -1:
//             i = 25;
//             break;
//         default:
//             i = 30;
//     }
//     printf("i: %d\n", i); // should print 20
//     return 0;
// }

// void printf(char *s, ...){
//     return;
// }

// void scanf(char *s, ...){
//     return;
// }


// int main(){
//     int x;
//     scanf("%d", &x);  // Wrong: should be &x
//     printf("Value: %d\n", x);
//     return 0;
// }

void printf(char *s, ...){
    return;
}

void scanf(char *s, ...){
    return;
}


// struct str{
//     int x;
//     int y;
// };

// int main(){
//     struct str a,b;
//     int p,q;
//     a.x=10;
//     a.y=20;
//     b=a;
//     p=b.x;
//     q=b.y;
//     printf("p: %d, q: %d\n", p, q);
//     // printf("a.x: %d, a.y: %d\n", a.x, a.y);
//     // printf("b.x: %d, b.y: %d\n", b.x, b.y);r
//     return 0;
// }

// int foo(int &xx,int &yy){
//     printf("Inside foo before increment:\n");
//     printf("x: %d, y: %d\n", xx, yy);
//     xx=xx+1;
//     yy=yy+1;
//     printf("Inside foo after increment:\n");
//     printf("x: %d, y: %d\n", xx, yy);

//     return 0;
// }

// int main(){
//     int x;
//     int y;
//     int result;
//     // int &ref = x;
//     // int result = -100;
//     //ref=1;
//     x=5;
//     y=7;
//     printf("Before foo call:\n");
//     printf("x: %d, ref: %d\n", x, y);

//     result = foo(x, y);
//     printf("After foo call:\n");
//     printf("x: %d, y: %d, result: %d\n", x, y);
//     return 0;

    
// }

// scanf and printf test

// int main(){
//     int x;
//     float y;
//     char z;
//     char str[5];
//     //scanf("%d %f %c", &x, &y, &z);  // Corrected to use & for all variables
//     // scanf("%d", &x);
//     // scanf("%f", &y);
//     // scanf("%c", &z);
//     scanf("%s", str);  // Added to test string input
//     z='f';

//     printf("Integer: %d\n", x);
//     printf("Float: %f\n", y);
//     printf("Character: %c\n", z);
//     printf("String: %s\n", str);  // Added to test string output
//     return 0;
// }


// reference + float,char and int test case

int foo(int &a, float &b, char &c){
    a = a + 10;
    b = b + 1.5;
    c = c + 1; // Increment character
    return 0;
}

int goo(int *a, float *b, char *c){
    *a = *a + 20;
    *b = *b + 2.5;
    *c = *c + 2; // Increment character
    return 0;
}

int main(){
    int x = 5;
    float y = 2.5;
    char z = 'a';

    printf("Before foo call:\n");
    printf("x: %d, y: %f, z: %c\n", x, y, z);

   // foo(x, y, z);
    goo(&x, &y, &z);

    printf("After foo call:\n");
    printf("x: %d, y: %f, z: %c\n", x, y, z);

    return 0;
}