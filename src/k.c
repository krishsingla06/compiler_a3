
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

// int main(){
//     int arr[3];
//     int x,y,z;
//     int *ptr = &x;
//     *ptr = 10;
//     x = *ptr;
// }

//-----------------------------

// int foo(int a, int b){
//     return a + b;
// }

// int main(){
//     int x = 10;
//     int y = 20;
//     return foo(x, y);
// }

//--------------------------------

int print_int(int x) {
    return 0;
}

int print_newline() {
    return 0;
}

int main() {
    int x = 10;
    int y = 20;
    int z = x + y;
    int *ptr;
    ptr = &z;

    
    print_int(z);
    print_newline();
    print_int(x);
    print_newline();

    print_int(y);
    print_newline();

    z=z*2;
    print_int(z);
    print_newline();

    
    return z;
}
