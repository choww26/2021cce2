///using namespace std -> ²�Ƶ{������std::
#include <iostream>
using namespace std;
class Student{
public:
    char name[30];
    int grade;
    };
    Student stu[100];///�}�C�����stable_sort
int main()
{
    int N;
    cin >> N;
    for(int i=0; i<N; i++){
        cin >> stu[i].name;
        cin >> stu[i].grade;
    }

    for(int i=0; i<N; i++){
        cout << stu[i].name << " ";
        cout << stu[i].grade << endl ;
    }                       /// end line

    return 0;
}
