// passed

int main(){
    int var = 65;  
    int a = 0; 
    int b = 0;
    switch(var){
        case 'A':
            a = 10;
            break;
        case '1':
            a = 20;
            break;
        default:
            a = 30;
    }
    b = a;
    return 0;
}