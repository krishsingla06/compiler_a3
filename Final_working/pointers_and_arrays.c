void printf(char* fmt, ...){ return; }
void scanf(char* fmt, ...){ return; }
// // float main(){
// //     float a = 3.5;
// //     float b = 2.8;
// //     float c;
// //     // t1 = (float) x
// //     c = a + b;
// //     //print_int(c);
// //     return c; // should return 5.5
// // }

// void print_float(float x){return;}
// void print_int(int x) {
//     return;
// }
// void print_newline(){return;}

// // float main() {
// //     float x = 1.99;
// //     float y = 2.7;
// //     int z=3;
// //     int p = y*z % x;
// //     // float y = 2.5;
// //     // int z=x+y;
// //     print_int(p);
// //     print_newline();
// //     print_int(z); 
// //     print_newline();   
// //     // print_int(42);
// //     // print_newline();
    
// //     // print_float(x);
// //     // print_newline();
    
// //     return 0.0;
// // }



// // float foo(float x, int y){
// //     int p;
// //     x=x*y;
// //     p=x;
// //     print_int(p);
// //     print_newline();
// //     return p;
// // }

// // int main(){
// //     //foo(3.14,2);
// //     int x = foo(3.14,2);
// //     print_int(x);
// //     print_newline();
// //     return 0;
// // }

// int main(){
//     // float arr[5];
//     // float sum;
//     // arr[0]=1.1;
//     // arr[1]=2.2;
//     // sum=arr[0]+arr[1];

//     float *ptr;
//     float x;
//     ptr = &x;
//     *ptr=1.1;
//     print_float(x);

//     //print_float(sum);
//     print_newline();
//     return 0;

// }

// // float and int intercoversion along with function calls and loops



//#include <stdio.h>

void print_int(int n){
    return;
}

void print_newline(){
    return;
}

void print_float(float f){
    return;
}

// test pointers

//ok
// int main(){
//     float *p;
//     float x;
//     p = &x;
//     *p = 42.3;
//     x=x+1;
//     // x++; Bss isme dikkat hai - type conversion nhi kii hui
//     print_float(x);
//     print_newline();
//     return x; // should return 42
// }

//ok
// int main(){
//     int ***x;
//     int **y;
//     int *z;
//     int a;
//     a=10;
//     z=&a;
//     y=&z;
//     x=&y;
//     print_int(a);
//     print_newline();
//     print_int(*z);
//     print_newline();
//     print_int(**y);
//     print_newline();
//     print_int(***x);
//     print_newline();
//     ***x=100;
//     print_int(***x);
//     print_newline();
// }

//ok
// int main(){
//     int x;
//     int y;
//     int*z;
//     z=&x;
//     *z=10;
//     print_int(x); // should print 10
//     print_newline();
//     y=*z;
//     print_int(y); // should print 10
//     print_newline();

//     z=&y;
//     *z=20;
//     print_int(x); // should print 10
//     print_newline();
//     print_int(y); // should print 20 
//     print_newline();
//     return x+y;
// }


// ok
//#include <stdio.h>
// int main(){
//     int **x;
//     int *y;
//     //(x+3)=x; // error
//     int a;
//     y=&a;
//     //*(x)=y;  // PROBLEM: Dereference uninitialized pointer x
//     x = &y;
//     *y=10;
//     //printf("%d\n",a);
//     print_int(a); // should print 10
//     print_newline();
//     **x=20;
//    // printf("%d\n",a);
//     print_int(a); // should print 20
//     print_newline();
// }


// ok
// int main(){
//     int arr[8];
//     int brr[4][2];
//     arr[2]=10;
//     brr[1][0]=20;
//     print_int(arr[2]); // should print 10
//     print_newline();
//     print_int(brr[1][0]); // should print 20
//     print_newline();
// }


//float arrays
// not ok
// int main(){
//     float arr[5];
//     float sum;
//     int i;
//     arr[0]=1.1;
//     arr[1]=2.2;
//     arr[2]=3.3;
//     arr[3]=4.4;
//     arr[4]=5.5;
//     sum=0.0;
//     for(i=0;i<5;i++){
//         sum = sum + arr[i];
//     }
//     print_float(sum); // should print 16.5
//     print_newline();
//     return 0;
// }

//int arrays regression test
// ok
// int main(){
//     int arr[10];
//     int i;
//     int sum;
//     sum=0;
//     for(i=0;i<10;i++){
//         arr[i]=i*10;
//         sum = sum + arr[i];
//     }
//     for(i=0;i<10;i++){
//         print_int(arr[i]); // should print 0,10,20,...90
//         print_newline();
//     }
//     print_int(sum); // should print 450
//     print_newline();
//     return 0;
// }


// ok
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


// ok
// ------------------------------------
// int main(){
//     int i;
//     int sum;
//     sum = 0;

//     //for mei kuch dikkat hai
//     for(i=1;i<=10;i++){
//         if(i%2==0){
//             sum = sum + i;
//         }
//         else{
//             sum = sum + (i*2);
//         }
//     }
    
//     print_int(sum);
//     print_newline();
//     return sum; // should return 80
// }


//------------------------------------
// ok
// int main(){
//     int arr[10][20];
//     arr[5][3]=1;
//     arr[5][1]=2;
//     // print_int(arr[0][0]); // garbage
//     // print_newline();
//     // print_int(arr[5][1]); // garbage
//     // print_newline();
//     print_int(arr[5][3]); // should print 1
//     print_newline();
//     print_int(arr[5][1]+arr[5][3]);  // should print 3
//     print_newline();
//     return arr[5][1]+arr[5][3];
// }



// ok
int main(){
    // ------------------------------------
    int x,y,z;
    int *ptr = &x;
    int arr[3];
    *ptr = 10;
    printf("Pointer value: %d\n", *ptr); // should print 10
    x = *ptr+100;
    printf("x value: %d\n", x); // should print 110

    arr[0] = x;
   printf("arr[0] value: %d\n", arr[0]); // should print 110
    print_newline();
    print_int(arr[0]); // should print 110
    print_newline();
    arr[1] = x + 10;
    arr[2] = x + 20;
    arr[2] = arr[0] + arr[1]; // expected 230

    printf("arr[2] value: %d\n", arr[2]); // should print 230

    return arr[2];
}


// ------------------------------------
