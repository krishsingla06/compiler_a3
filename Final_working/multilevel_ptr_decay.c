void printf(char* fmt, ...){ return; }
void scanf(char* fmt, ...){ return; }

int foo(int *arr,int n,int m){
    
    int i, j;
    int sum = 0;
    for(i=0;i<n;i++){
        for(j=0;j<m;j++){
            sum = sum + arr[i*m + j];
        }
    }
    
    // set all elements to -1
    for(i=0;i<n;i++){
        for(j=0;j<m;j++){
            arr[i*m + j] = -1;
        }
    }

    return sum;
}

int main(){
    int arr[3][4];
    int i;
    int j;
    int x;
    // initialize array
    for(i=0;i<3;i++){
        for(j=0;j<4;j++){
            arr[i][j]=i+j;
        }
    }

    x = foo(arr,3,4);

    printf("Sum: %d\n", x); // should print 78
    for(i=0;i<3;i++){
        printf("%d %d %d %d\n", arr[i][0], arr[i][1], arr[i][2], arr[i][3]); // should print -1 -1 -1 -1
    }

    return 0;
}