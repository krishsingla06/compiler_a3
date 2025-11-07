
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

// void print_int(int n){
//     return;
// }

// void print_newline(){
//     return;
// }


// int main(){
//     int x;
//     int dec = 10;
//     switch(dec){
//         case 1:
//             print_int(10);
//             break;
//         case 2:
//             print_int(20);
//             break;
        
//         default:
//             print_int(30);
//     }

// }

// Test global and static variables

int global_x;
float global_f;

void print_int(int x) {
    return;
}

int main() {
        int local;

    global_x = 100;
    global_f = 2.5;
    
    local = global_x + 10;
    
    print_int(local);
    
    return 0;
}
