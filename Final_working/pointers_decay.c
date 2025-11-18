
void printf(char* c, ...){return;}
void print_int(int n){return 0;}

//ok
// void arr_decay_test(int *ptr){
//     ptr[0] = 10;
//     print_int(ptr[0]); // should print 10
//     print_newline();
//     ptr[1] = 20;
//     print_int(ptr[1]); // should print 20
//     print_newline();
// }

// int main(){
//     int arr[4][3][2];
//     int *ptr;
//     ptr = arr;
//     ptr[0] = 10;
//     print_int(arr[0][0][0]); // should print 10
//     print_newline();
//     ptr[1] = 20;
//     print_int(arr[0][0][1]); // should print 20
//     print_newline();
//     arr[1][0][0] = 30;
//     print_int(ptr[6]); // should print 30
//     print_newline();
//     arr_decay_test(arr);
//     return 0;
// }

int main(){
    // char arr[2][3];
    // arr[0][0] = 'A';
    // arr[0][1] = 'B';
    // arr[1][0] = 'C';
    char c = 'Z';
    printf("Character c: %c (ASCII: %d)\n", c, c); // should print 'Z' i.e., 90
    // print_int(arr[0][0]); // should print ASCII of 'A' i.e., 65
    // print_newline();
    // print_int(arr[0][1]); // should print ASCII of 'B' i.e
    // print_newline();
    // print_int(arr[1][0]); // should print ASCII of 'C' i.e., 67
    // print_newline();
}