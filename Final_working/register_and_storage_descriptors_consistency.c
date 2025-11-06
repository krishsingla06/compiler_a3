
void print_int(int n){
    return;
}

void print_newline(){
    return;
}

// Important: Test register descriptor consistency after assignments
int main(){
    int x;
    int y;
    x=1;
    y=x;
    y++;
    print_int(x);
    print_newline();
    print_int(y);
    print_newline();
    return 0;
}
