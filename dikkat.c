// -------------------------------------
int main(){
    int i;
    int sum;
    sum = 0;

    // for mei kuch dikkat hai
    // for(i=1;i<=10;i++){
    //     if(i%2==0){
    //         sum = sum + i;
    //     }
    //     else{
    //         sum = sum + (i*2);
    //     }
    // }
    
    print_int(sum);
    print_newline();
    return sum; // should return 80
}

// multilevel arrays mei dikkat hai, like arr[2] tries to give derefernced value but wo address hona chahiye


int foo(int a, int b, int c, int d, int e){
    return a + b + c + d + e;
}
int main(){
    int x;
    x = foo(1,2,3,4,5); // should return 15
    print_int(x);
    print_newline();
    return x;
}

// -------------------------------------
// recursive function test
int factorial(int n){
    if(n==0){
        return 1;
    }
    else{
        return n * factorial(n-1);
    }
}

int main(){
    int x;
    x = factorial(5); // should return 120
    print_int(x);
    print_newline();
    return x;
}

// -------------------------------------
int main(){
    int i=10;
    int sum;
    sum = 0;
    while(i<=10){
        if(i==5){
            continue;
        }
        if(i==8){
            break;
        }
        sum = sum + i;
        i = i + 1;
    }
    print_int(sum); // should print 37 (1+2+3+4+6+7)
    print_newline();
    return sum; // should return 37
}

int print_int(int x) {
    return 0;
}

int print_newline() {
    return 0;
}

// -------------------------------------
// Rigorous test: Variable declarations, assignments, arithmetic operations, nested scopes and function calls
// int foo(int x,int y){
//     int p;
//     int q;
//     p=1;
//     q=2;
//     return p+q+x+y;
// }

// int main(){

//     int a;
//     int b;
//     float c;
//     char d;
//     int e;

//     a=3;
//     b=4;
//    a = b+c+foo(a,b);

//     {
//         int x;
//     }
   
//     {
//         int innera;
//         int arr[10];
//         char innerc;
//         int innerd;
//         innera=5;
//     }
//     return foo(a,b);
// }

// -------------------------------------
// Test: Simple function call

// int foo(int x,int y){
//     int p;
//     int q;
//     q=x+y;
//     p=q*2;
//     return p+q;
// }

// int foo(int x, int y) {
//     int p;
//     int q;
//     p = 1;
//     q = 2;
//     return p + q + x + y;
// }

// -------------------------------------
// Test: Force temp register spilling

// int main() {
//     int a, b, c, d, e, f, g, h, i, j, k, l;
//     int result;
    
//     a = 1;
//     b = 2;
//     c = 3;
//     d = 4;
//     e = 5;
//     f = 6;
//     g = 7;
//     h = 8;
//     i = 9;
//     j = 10;
//     k = 11;
//     l = 12;
    
//     // This will create 12+ live temporaries at once
//     result = (a + b) + (c + d) + (e + f) + (g + h) + (i + j) + (k + l);
    
//     return result;
// }

// int x=1;
// int y=2;


// -------------------------------------
// Simple function call test

// int main(int m,int n){
//     int p;
//     int q;
//     //static int s;
//     p = m+n;
//     q = m-n;
//     return foo(p,q);
// }

// ------------------------------------
// Test: Force temp register spilling

// int main() {
//     int a = 1;
//     int b = 2;
//     int c = 3;
//     int d = 4;
//     int e = 5;
    
//     // Create many temps that all need to stay alive
//     // This will force spilling because we need more than 10 registers
//     int result = ((a + b) * (c + d)) + ((a - b) * (c - d)) + 
//                  ((a * b) + (c * d)) + ((a + c) * (b + d)) +
//                  (e * (a + b + c + d));
    
//     return result;
// }


// ------------------------------------
// Function calling, logical operators, return values and calling
// int foo(int x,int y){
//     int p;
//     p = !(x);
//     return 0;
// }

// int main(){
//     int p,q;
//     foo(p,q);
// }

//--------------------------------------

// Important: Test jumps and labels as well as basic block handling
// int main(){
//     int x;
//     x=1;
//     x++;
//     x--;
//     goto L1;
//     x=2;
// L1:
//     x=3;
//     goto L2;
// L2:
//     x=4;
//     return x;
// }

// ------------------------------------
// Important: Test register descriptor consistency after assignments
// int main(){
//     int x;
//     int y;
//     x=1;
//     y=x;
//     y++;
// }

// int main(){
//     // int x;
//     // int y;
//     // int*z;
//     // z=&x;
//     // *z=10;
//     // y=*z;
//     // z=&y;
//     // *z=20;
//     // return x+y;
//     int ***x;
//     ***x=10;

// }

//int main(){
    // int **x;
    // int *y;
    // //(x+3)=x; // error
    // *(x)=y;
    // *y=10;
    // **x=20;
//}

// int main(){
//     int m[10];
//     int *x;
//     int y;
//     y=*x;
//     //*x=1;
// }

// int main(){
//     int a,b,c;
//     char* str = "Hello, World!";
//     a = 10          ;//→  li $t0, 10
//     b = 20          ;//→  li $t1, 20
//     c = a + b + 30  ;//→  add $t2, $t0, $t1
//     if (c > 50)     ;//→  li $t4, 50
//     c = c - 10      ;//→  li $t1, 10
//                     //   sub $t1, $t0, $t1
// }

// struct Node {
//     int data;
//     int more_data;
//     int p;
// };

// int main(){
//     struct Node node1;
//     node1.data = 10;
//     return 0;
//     // node1.more_data = 20;
//     // node1.p = node1.data + node1.more_data;
//     // return node1.p;
// }

//int main(){
    // int arr[10][20];
    // arr[5][3]=1;
    // arr[5][1]=2;
    // print_int(arr[0][0]);
    // print_newline();
    // print_int(arr[5][1]);
    // print_newline();
    // arr[1] = 20;
    // arr[0] = 2;
    // arr[2] = 200;
    // print_int(arr[0][1]);
    // print_newline();
    // print_int(arr[1][1]);
    // print_newline();
    // print_int(arr[2]);
    // print_newline();
    // int x,y,z;
    // int *ptr = &x;
    // *ptr = 10;
    // print_int(*ptr);
    // print_newline();
    // x = *ptr+100;
    // print_int(x);
    // print_newline();
    // arr[0] = x;
    // arr[1] = x + 10;
    // arr[2] = x + 20;
    // //arr[2] = arr[0] + arr[1]; // expected 230
    // print_int(arr[0]);
    // print_newline();
    // print_int(arr[1]);
    // print_newline();
    // print_int(arr[2]);
    // print_newline();
    //return arr[2];
//}

//-----------------------------

// int foo(int a, int b){
//     return a + b;
// }

// int main(){
//     int x = 10;
//     int y = 20;
//     int z = foo(x, y);
//     print_int(z);
//     print_newline();
// }

//--------------------------------

// int main() {
//     int x = 10;
//     int y = 20;
//     int z = x + y;
//     int *ptr;
//     ptr = &z;

    
//     print_int(z);
//     print_newline();
//     print_int(x);
//     print_newline();

//     print_int(y);
//     print_newline();

//     z=z*2;
//     print_int(z);
//     print_newline();

    
//     return z;
// }

// --------------------------------
// multilevel pointers test

// int main(){
//     int x;
//     int *p;
//     int **q;
//     int ***r;

//     x = 10;
//     p = &x;
//     q = &p;
//     r = &q;

//     ***r = 20; // x should become 20
//     print_int(x);
//     print_newline();
//     //dikkat for now, bcoz memory mei kabhi store nahi kiya p,q,r ko, they are in registers only

//     return x; // Should return 20
// }

// loop test
// int main(){
//     int i;
//     int sum;
//     sum = 0;
//     for(i=1;i<=10;i++){
//         sum = sum + i;
//     }
//     print_int(sum);
//     print_newline();
//     return sum; // should return 55
// }

// more loops and if else and jumps test with printint

// int main(){
//     int i;
//     int sum;
//     sum = 0;
//     // for(i=1;i<=10;i++){
//     //     if(i%2==0){
//     //         sum = sum + i;
//     //     }
//     //     else{
//     //         sum = sum + (i*2);
//     //     }
//     // }
//     // while(i<=10){
//     //     if(i%2==0){
//     //         sum = sum + i;
//     //     }
//     //     else{
//     //         sum = sum + (i*2);
//     //     }
//     //     i = i + 1;
//     // }
//     // do{
//     //     if(i%2==0){
//     //         sum = sum + i;
//     //     }
//     //     else{
//     //         sum = sum + (i*2);
//     //     }
//     //     i = i + 1;
//     // }while(i<=10);
//     // until(i>10){
//     //     if(i%2==0){
//     //         sum = sum + i;
//     //     }
//     //     else{
//     //         sum = sum + (i*2);
//     //     }
//     //     i = i + 1;
//     // }
//     print_int(sum);
//     print_newline();
//     return sum; // should return 80
// }

// int main(){
//     int arr[4][5];
//     arr[2][3] = 10;
//     // print_int(arr[2][3]);
//     // print_newline();
// }

// test jumps

// int main(){
//     int x;
//     x = 10;
//     goto I9;
// I10:
//     x = 20;
//     goto I11;
// I9:
//     x = 30;
//     goto I10;
// I11:
//     x = 40;
//     print_int(x); // should print 40
//     print_newline();
//     return x;
// }

// nested loops test
// while, do while and until only
// int main(){
//     int i;
//     int j;
//     int sum;
//     sum = 0;
//     i = 1;
//     do{
//         j = 1;
//         while(j<=5){
//             sum = sum + (i*j);
//             j = j + 1;
//         }
//         i = i + 1;
//     }while(i<=3);
//     print_int(sum); // should print 90
//     print_newline();
//     return sum; // should return 90
// }

// highly complicated nested loops with jumps test
// int main(){
//     int i;
//     int j;
//     int sum;
//     sum = 0;
//     i = 1;
//     I1:
//     j = 1;
//     I2:
//         sum = sum + (i*j);
//         j = j + 1;
//         if(j<=5){
//             goto I2;
//         }
//     i = i + 1;
//     if(i<=3){
//         goto I1;
//     }
//     print_int(sum); // should print 90
//     print_newline();
//     return sum; // should return 90
// }


// function call with more than 4 params test
// int foo(int a, int b, int c, int d, int e){
//     return a + b + c + d + e;
// }
// int main(){
//     int x;
//     x = foo(1,2,3,4,5); // should return 15
//     print_int(x);
//     print_newline();
//     return x;
// }


// int foo(int a, int b, int c, int d){
//     return a + b + c + d;
// }
// int main(){
//     int x;
//     x = foo(1,2,3,4); // should return 10
//     print_int(x);
//     print_newline();
//     return x;
// }

// recursive function test
// int factorial(int n){
//     if(n==0){
//         return 1;
//     }
//     else{
//         return n * factorial(n-1);
//     }
// }
// int main(){
//     int x;
//     x = factorial(5); // should return 120
//     print_int(x);
//     print_newline();
//     return x;
// }

// go break continue test
// int main(){
//     int i=1;
//     int sum;
//     sum = 0;
//     while(i<=10){
//         i = i + 1;

//         if(i==5){
//             continue;
//         }
//         if(i==8){
//             break;
//         }
//         sum = sum + i;
//     }
//     print_int(sum); // should print 22
//     print_newline();
//     return sum; // should return 22
// }


int main(){
    int i;
    int sum;
    sum = 0;

    //for mei kuch dikkat hai
    for(i=1;i<=10;i++){
        if(i%2==0){
            sum = sum + i;
        }
        else{
            sum = sum + (i*2);
        }
    }
    
    print_int(sum);
    print_newline();
    return sum; // should return 80
}
