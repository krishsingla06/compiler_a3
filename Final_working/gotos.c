
void print_int(int n){
    return;
}

void print_newline(){
    return;
}


int main(){
    int x;
    x = 10;
    goto I9;
I10:
    x = 20;
    goto I11;
I9:
    x = 30;
    goto I10;
I11:
    x = 40;
    print_int(x); // should print 40
    print_newline();
    return x;
}