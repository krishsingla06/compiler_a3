
enum Color { RED, GREEN, BLUE };
// enum Color { YELLOW, ORANGE, PURPLE }; //yahan bhi error aana chahiye bcoz same name se ek hii scope mei 2 enums nhi ho skte
// enum Mood { HAPPY, SAD, ANGRY, GREEN}; //yahn bhi error aana chahiye bcoz GREEN already defined in enum Color

int Color=1;
int main(){
    enum Color1 { YELLOW, ORANGE, PURPLE , BLUE,RED};
    // int RED=1; //this gives error on uncommenting
    enum Color c = RED; //isko 4 assign hona chahiye
    enum Mood m = GREEN; 
    {
        enum Color { BLACK, BLUE,WHITE};
        int z;
        int x = BLUE; //isko 1 assign hona chahiye
        {
            enum Color { CYAN, MAGENTA, YELLOW=10,BLUE};
            int y = BLUE; //isko 11 assign hona chahiye
        }
        z = BLUE; //isko 1 assign hona chahiye
    }
}
