void print_int(int x){return;}
void print_float(float x){return;}
void print_newline(){return;}

int main(){
    int i = 5;
    int sum = 0;
    float f = 3.14;
    
    int added = i + 2;
    int subtracted = added - 1;
    int multiplied = subtracted * 3;
    int divided = multiplied / 2;
    int modulus = divided % 4;

    int subexpr1 = (2 + 3) * 4;
    int subexpr2 = 2 + (3 * 4);

    int less_than = (5 < 10);
    int greater_than = (10 > 5);
    int less_equal = (5 <= 5);
    int greater_equal = (6 >= 5);
    int equal = (5 == 5);
    int not_equal = (5 != 4);
    int logical_and = (1 && 0);
    int logical_or = (1 || 0);
    int logical_not = !logical_and;

    // short-circuit evaluation
    int sc1 = (0 && i);   // RHS not evaluated
    int sc2 = (1 || sum); // RHS not evaluated

    // type conversion cases
    int type_conv1 = 5 && 10.5;  
    int type_conv2 = 5 || "hello";  
    int type_conv3 = !20.5;    

    print_int(modulus);
    print_newline();
    print_float(f);
    print_newline();
    print_int(type_conv1);
    print_newline();
    print_int(type_conv2);
    print_newline();
    print_int(type_conv3);
    print_newline();

    // expected output : 
    // 1
    // 20.5
    // 0
    // 1

}
