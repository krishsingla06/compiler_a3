void printf(char* fmt, ...){ return; }
void scanf(char* fmt, ...){ return; }

int main(){
    // basic typedef usage with nested scopes
    typedef int num;
    
    typedef char str20[20];
    
    typedef struct {
        int id;
        char name[50];
    } Person;
    Person p1;
    
    str20 greeting = "Hello, World!";
    num a = 5;
    
    p1.id = 1;
    p1.name[0] = 'A';
    {
        typedef float num;
        num b = 3.14;
        printf("Inner num (float): %f\n", b);
    }
    printf("Outer num (int): %d\n", a);
    
    // typedef with arrays
    // printf("Greeting: %s\n", greeting);     // gives memory out of bounds error
    
    // typedef with structs
    printf("Person ID: %d, Name: %c\n", p1.id, p1.name[0]);
    return 0;
}

