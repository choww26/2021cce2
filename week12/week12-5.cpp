///C++ STL
#include <iostream>
#include <vector>///C++���}�C
using namespace std;
class Student{
public:
    char name[30];
    int grade;
    };
    ///Student stu[100];///�}�C�����stable_sort
int main()
{
    vector<int> v;  ///�̭����ܦh��A�C�榳�@��<���>
                    ///v �S�����h�j�C�N0��

    v.push_back(10); ///�[�j�@��A��J10...
    v.push_back(20); ///�[�j�@��A��J20...
    v.push_back(30); ///�[�j�@��A��J30

    for(int i=0; i<3; i++){
        cout << v[i];  ///���}�C�@�ˡA��v[i]���X
        cout << endl;
    }

    return 0;
}
