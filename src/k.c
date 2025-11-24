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



    pf = pf + 2.5;

    pi = pi + 20;

    pc = pc + 2;

    

    printf("f: %f, c: %c, i: %d\n", f, c, I);

    printf("pf: %f, pc: %c, pi: %d\n", pf, pc, pi);

}