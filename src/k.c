// int printf(char* fmt, ...){ return 0; }

// void foo(){
//     static float f = 2.5;
//     f = f + 1.5;
//     printf("Static float f: %f\n", f);
// }

// int main(){
//     foo();
//     foo();
//     foo();
//     return 0;
// }


void printf(char* fmt, ...){ return; }

void scanf(char* fmt, ...){ return; }



int main(){

    // refereces + float,char and int test case

    float f = 5.5;

    float& pf = f;

    char c = 'A';

    char& pc = c;

    int I = 10;

    int& pi = I;

    printf("f: %f, c: %c, i: %d\n", f, c, I);


    pf = pf + 2.5;

    pi = pi + 20;

    


    printf("pf: %f, pc: %c, pi: %d\n", pf, pc, pi);

}