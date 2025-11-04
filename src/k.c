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
//    // a = b+c+foo(a,b);

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

int main(int m,int n){
    int p;
    int q;
    //static int s;
    p = m<n;
    return p;
}

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
