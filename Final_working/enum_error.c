void printf(char* fmt, ...){ return; }
void scanf(char* fmt, ...){ return; }

// complicated enum test case
enum Day { SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY };
enum Month { JANUARY=1, FEBRUARY, MARCH, APRIL, MAY, JUNE, JULY, AUGUST, SEPTEMBER, OCTOBER, NOVEMBER, DECEMBER , FRIDAY=6};

int main(){
    int day_num = 3;
    enum Day today = WEDNESDAY;
    enum Month month = MARCH;
    if (today == day_num) {
        printf("Today is WEDNESDAY\n");
    } else {
        printf("Today is not WEDNESDAY\n");
    }
    printf("Month number for MARCH: %d\n", month); // should print 3
}