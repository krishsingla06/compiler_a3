
void print_int(int n){
    return;
}

void print_newline(){
    return;
}

int main(){
    int i;
    int sum;
    sum = 0;
    until(i>10){
        if(i%2==0){
            sum = sum + i;
        }
        else{
            sum = sum + (i*2);
        }
        i = i + 1;
    }
    print_int(sum);
    print_newline();
    return sum; // should return 80
}