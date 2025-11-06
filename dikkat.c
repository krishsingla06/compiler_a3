// multilevel arrays mei dikkat hai, like arr[2] tries to give derefernced value but wo address hona chahiye

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

// ------------------------------------
//int main(){
    // int **x;
    // int *y;
    // //(x+3)=x; // error
    // *(x)=y;
    // *y=10;
    // **x=20;
//}

//------------------------------------

// int main(){
//     int m[10];
//     int *x;
//     int y;
//     y=*x;
//     //*x=1;
// }

// ------------------------------------

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

// ------------------------------------

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

// ------------------------------------

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

// ------------------------------------
// int main(){
//     int arr[4][5];
//     arr[2][3] = 10;
//     // print_int(arr[2][3]);
//     // print_newline();
// }

// ------------------------------------


// int main(){
//     int **x;
//     int *y;
//     (x+3)=y;
// }


// -------------------------------------

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
//------------------------------------
