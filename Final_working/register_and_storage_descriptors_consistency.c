
void printf(char* c, ...){return;}

// Important: Test register descriptor consistency after assignments
int main(){
    int x;
    int y;
    x=1;
    y=x;
    y++;
    printf("x: %d\n", x);
    printf("y: %d\n", y);
    return 0;
}
