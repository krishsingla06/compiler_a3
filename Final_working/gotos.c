
void printf(char* c, ...){return;}


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
    printf("x: %d\n", x); // should print 40
    return x;
}