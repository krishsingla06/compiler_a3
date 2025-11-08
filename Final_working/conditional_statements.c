void print_int(int x){return;}
void print_float(float x){return;}
void print_newline(){return;}

int main(){
    // conditional statements 
    int a = 10;
    int b = 10;
    int max;
    int i = 0, j = 0;
    int sum_while = 0;
    int sum_for = 0;
    int sum_until = 0;

    int okkk = 0;

    if (a > b) {
        max = a;
    } else if (a == b) {
        max = b + 50;
    }
    else {
        max = b + 100;
    }

    // while loop with break and continue
    while(i < 10){
        switch (i){
        case 0:
            sum_while = sum_while + 100;
            break;
        case 1:
            sum_while = sum_while + 200;
            break;
        default:        
            break;
        }

        sum_while = sum_while + i;
        i = i + 1;
    }

    // for loop with nested if-else
    for (i = 0; i < 10; i++) {
        for(j = 0; j < 5; j++) {
            if (j % 2 == 0) {
                sum_for = sum_for + 100;
            } else {
                sum_for = sum_for + 200;
            }
        }

        sum_for = sum_for + i;
    }

    // until loop
    i = 0;
    until(i >= 10){
        sum_until = sum_until + i;
        i = i + 1;
    }

    // goto statement simulation
    i = 0;
    okkk = 0;
    start :
    if (i >= 10) goto end;
    okkk = okkk + i;
    i = i + 1;
    goto start;
    end :

    // i = 0;
    // okkk = 0;
    // start :
    // if (i >= 10) goto end;
    // okkk = okkk + i;
    // i = i + 1;
    // goto start;
    // end :

    print_int(max);
    print_newline();

    print_newline();
    print_newline();

    print_int(sum_while);
    print_newline();

    print_int(sum_for);
    print_newline();

    print_int(sum_until);
    print_newline();

    print_int(okkk);
    print_newline();

    // expected output
    // 60
    // 345
    // 7045
    // 45
    // 45
}
