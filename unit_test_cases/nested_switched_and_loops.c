
int main(){
    int x=2;
    //case 2:
    //Type Error at line 3: Case label not within a switch statement
    // Parse error at line 4: syntax error
    
    int y;
    switch(x){
        case 1:
            x = 10;
            switch(y){
                case 2:
                    x = 15;
                    break;
                default:
                    x = 5;
            }
            break;
        case 5:
            x=15;
            while(x--){
                y++;
            }
           y=y*4;
           break;
        case 2:
            x = 20;
            break;
        default:
            x = 0;
    }
}
