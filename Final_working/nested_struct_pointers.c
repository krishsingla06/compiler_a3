void printf(char* fmt, ...){ return; }
void scanf(char* fmt, ...){ return; }


struct teacher{
    int id;
    int age;
};
struct student{
    int id;
    struct teacher *teacher_ptr;
};

int main(){
    struct teacher t1;
    struct student s1;

    t1.id = 101;
    t1.age = 45;

    s1.id = 201;
    s1.teacher_ptr = &t1;

    printf("Student ID: %d\n", s1.id); // should print 201
    
    printf("Teacher ID: %d, Age: %d\n", s1.teacher_ptr->id, s1.teacher_ptr->age); // should print 101 and 45

    return 0;
}
