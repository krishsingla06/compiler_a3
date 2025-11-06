
void print_int(int n){
    return;
}

void print_newline(){
    return;
}

// go break continue test
int main(){
    int i=1;
    int sum;
    sum = 0;
    while(i<=10){
        i = i + 1;

        if(i==5){
            continue;
        }
        if(i==8){
            break;
        }
        sum = sum + i;
    }
    print_int(sum); // should print 22
    print_newline();
    return sum; // should return 22
}