// multilevel arrays mei dikkat hai, like arr[2] tries to give derefernced value but wo address hona chahiye

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

// int main(){
//     int **x;
//     int *y;
//     (x+3)=y;
// }

// ------------------------------------

int main(){
    int m[10];
    int *x;
    int y;
    x = m;
    *x = 1;
    y=m[0];
    print_int(y); // should print 1
    //*x=1;
}
