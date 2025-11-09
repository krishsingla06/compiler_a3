void print_float(float x){return;}
void print_int(int x) {
    return;
}
void print_newline(){return;}


// float main(){
//     float a = 3.5;
//     float b = 2.8;
//     float c;
//     // t1 = (float) x
//     c = a + b;
//     //print_int(c);
//     return c; // should return 5.5
// }

// float main() {
//     float x = 1.99;
//     float y = 2.7;
//     int z=3;
//     int p = y*z % x;
//     // float y = 2.5;
//     // int z=x+y;
//     print_int(p);
//     print_newline();
//     print_int(z); 
//     print_newline();   
//     // print_int(42);
//     // print_newline();  
//     // print_float(x);
//     // print_newline();  
//     return 0.0;
// }



// float foo(float x, int y){
//     int p;
//     x=x*y;
//     p=x;
//     print_int(p);
//     print_newline();
//     return p;
// }

// int main(){
//     //foo(3.14,2);
//     int x = foo(3.14,2);
//     print_int(x);
//     print_newline();
//     return 0;
// }

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

struct A
{
    int x;
    int y;
};


void foo(struct A* a){
    print_int(a->x);
    print_newline();
    print_int(a->y);
    print_newline();
    a->x = a->x + a->y;
    print_int(a->x);
    print_newline();
}

int main(){
    struct A a;
    a.x = 10;
    a.y = 20;
    foo(&a);
    print_int(a.x);
    print_newline();
    return 0;
}

int main(){
    int x;
    x=2;
    x=x*1;
}