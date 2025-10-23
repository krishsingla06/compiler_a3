
void func(int& param){
    param=1;
}

int main(){
int x = 5;
int& ref = x;  // ERROR: exact type match required
ref=1;
func(x);  // ERROR: exact type match required
}