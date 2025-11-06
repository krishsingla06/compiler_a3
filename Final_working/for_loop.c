
void print_int(int n){
    return;
}

void print_newline(){
    return;
}

// loop test
int main(){
    int i;
    int sum;
    sum = 0;
    for(i=1;i<=10;i++){
        sum = sum + i;
    }
    print_int(sum);
    print_newline();
    return sum; // should return 55
}

