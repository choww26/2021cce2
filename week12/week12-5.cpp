///C++ STL
#include <iostream>
#include <vector>///C++的陣列
using namespace std;
class Student{
public:
    char name[30];
    int grade;
    };
    ///Student stu[100];///陣列不能用stable_sort
int main()
{
    vector<int> v;  ///裡面有很多格，每格有一個<整數>
                    ///v 沒有說多大。就0格

    v.push_back(10); ///加大一格，放入10...
    v.push_back(20); ///加大一格，放入20...
    v.push_back(30); ///加大一格，放入30

    for(int i=0; i<3; i++){
        cout << v[i];  ///像陣列一樣，用v[i]取出
        cout << endl;
    }

    return 0;
}
