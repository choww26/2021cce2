#include <stdio.h>
#include <vector>///付出的代價 std::vector<Student>
#include <algorithm>///付出的代價 std::sort()
class Student{///(大寫)學生裡面有
public:///公開給別人用，所以main可以存取裡面的資料
    char name[80];
    int grade;
};
///Student student[100];///(大寫)Student student[100];///有100個student
bool compare( Student a, Student b){
    return ( a.grade > b.grade);
}
int main()
{
    FILE * fin = fopen("input.txt", "r");
    int N;
    fscanf( fin, "%d", &N);

    std::vector<Student> student(20);
    for(int i=0; i<N; i++){
        fscanf(fin, "%s %d", student[i].name, &student[i].grade);
    }

    std::sort( student.begin(), student.end(), compare);

    for(int i=0; i<N; i++){
        printf("%s %d\n", student[i].name,  student[i].grade );
    }
}
