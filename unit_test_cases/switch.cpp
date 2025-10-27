int main(){
    int x = 1, out = 0;
    int a = 2, b = 1;
    int i = 0, j = 0;
    char c = 'b';

    // simple switch statement
    switch (x) {
    case 0:
        x = x +  10;
        break;
    case 1:
        x = x +  1;
    case 2:
        x = x +  2;
        break;
    default:
        x = 0;
    }

    // nested switch statement
    switch (a) {
    case 1:
        out = out + 2;
        break;
    case 2:
        switch (b) {
        case 0: out = out + 0; break;
        case 1: out = out +  20; break;
        default: out = out +  999;
        }
        break;
    default:
        out = out - 100;
    }

    // switch with only default case
    switch(x){
    default:
        out = 2;
    }

    // switch with goto statements
    switch (x) {
    case 1: out = 1; break;
    case 2: out = 2; goto after;
    case 3: out = 3; goto after;
    default: out = -9;
    }
    after:
        out = out + 0;

    // switch inside a loop
    while(i < 10){
        switch(i){
        case 0 : j = j + 1;
        case 1: j = j + 2;
        case 2: j = j + 3;
        default: j = j + 10;
        }
        i++;
    }   

    // switch with char type
    switch(c){
    case 'a': out = out +  1; break;
    case 'b': out = out +  2; break;
    case 'c': out = out +  3; break;
    default: out = out +  99;
    }

    return 0;
}