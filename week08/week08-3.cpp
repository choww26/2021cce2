#include <stdio.h>
#include <string.h>
int grades[3];
char names[3][20];///三個名字一個最多二十字
int main()
{
	int grade;
	char name[20];///一個字串二十個字母
	for(int i=0; i<3; i++)
    {
        scanf("%s", name);
        scanf("%d", &grade);
        strcpy( names[i], name );
        grades[i]= grade;

    }
    for(int i=0; i<3; i++)
    {
          printf("%s 得到 %d\n",names[i] ,grades[i]);
    }
}
