
// int main() {
//     int arr[5];
//     int *ptr;
    
//     arr[0] = 10;
//     arr[1] = 20;
//     arr[2] = 30;
    
//     ptr = arr;  // array-to-pointer decay
    
//     print_int(ptr[0]);  // should print 10
//     print_newline();
//     print_int(ptr[1]);  // should print 20
//     print_newline();
//     print_int(ptr[2]);  // should print 30
//     print_newline();
    
//     ptr[3] = 40;
//     print_int(arr[3]);  // should print 40
//     print_newline();
    
//     return 0;
// }


// void print_int(int n) { return; }
// void print_newline() { return; }

// int main() {
//     int arr[3][4];
//     int *ptr;
    
//     arr[0][0] = 11;
//     arr[0][3] = 14;
//     arr[1][0] = 21;
//     arr[2][3] = 34;
    
//     ptr = arr;  // points to arr[0][0]
    
//     print_int(ptr[0]);   // should print 11
//     print_newline();
//     print_int(ptr[3]);   // should print 14
//     print_newline();
//     print_int(ptr[4]);   // should print 21
//     print_newline();
//     print_int(ptr[11]);  // should print 34
//     print_newline();
    
//     return 0;
// }

// void print_int(int n) { return; }
// void print_newline() { return; }

// void modify_array(int *p) {
//     p[0] = 100;
//     p[1] = 200;
//     p[2] = 300;
// }

// int main() {
//     int arr[5];
    
//     arr[0] = 1;
//     arr[1] = 2;
//     arr[2] = 3;
    
//     print_int(arr[0]);  // should print 1
//     print_newline();
    
//     modify_array(arr);
    
//     print_int(arr[0]);  // should print 100
//     print_newline();
//     print_int(arr[1]);  // should print 200
//     print_newline();
//     print_int(arr[2]);  // should print 300
//     print_newline();
    
//     return 0;
// }

// void print_int(int n) { return; }
// void print_newline() { return; }

// int main() {
//     int x = 50;
//     int y = 60;
//     int *ptr1;
//     int *ptr2;
    
//     ptr1 = &x;
//     ptr2 = &y;
    
//     print_int(*ptr1);  // should print 50
//     print_newline();
//     print_int(*ptr2);  // should print 60
//     print_newline();
    
//     *ptr1 = 500;
//     *ptr2 = 600;
    
//     print_int(x);  // should print 500
//     print_newline();
//     print_int(y);  // should print 600
//     print_newline();
    
//     ptr1 = ptr2;
//     *ptr1 = 700;
    
//     print_int(y);  // should print 700
//     print_newline();
//     print_int(*ptr2);  // should print 700
//     print_newline();
    
//     return 0;
// }

// void print_int(int n) { return; }
// void print_newline() { return; }

// int main() {
//     int arr[6];
//     int *ptr1, *ptr2;
    
//     ptr1 = arr;
//     ptr1[0] = 10;
//     ptr1[1] = 20;
//     ptr1[2] = 30;
    
//     ptr2 = arr;
//     ptr2[3] = 40;
//     ptr2[4] = 50;
//     ptr2[5] = 60;
    
//     print_int(arr[0]);  // should print 10
//     print_newline();
//     print_int(arr[3]);  // should print 40
//     print_newline();
    
//     print_int(ptr1[2]);  // should print 30
//     print_newline();
//     print_int(ptr2[5]);  // should print 60
//     print_newline();
    
//     return 0;
// }

// void print_int(int n) { return; }
// void print_newline() { return; }

// void inner_func(int *p) {
//     p[0] = 777;
//     print_int(p[0]);  // should print 777
//     print_newline();
// }

// void outer_func(int *p) {
//     p[1] = 888;
//     inner_func(p);
//     print_int(p[1]);  // should print 888
//     print_newline();
// }

// int main() {
//     int arr[3];
//     arr[0] = 1;
//     arr[1] = 2;
    
//     outer_func(arr);
    
//     print_int(arr[0]);  // should print 777
//     print_newline();
//     print_int(arr[1]);  // should print 888
//     print_newline();
    
//     return 0;
// }