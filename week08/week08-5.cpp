#include <stdio.h>
#include <string.h>
int grades[3];
char names[3][20];///�T�ӦW�r�@�ӳ̦h�G�Q�r
int main()
{
	int grade;
	char name[20];///�@�Ӧr��G�Q�Ӧr��
	for(int i=0; i<3; i++)
    {
        scanf("%s", name);
        scanf("%d", &grade);
        strcpy( names[i], name );
        grades[i]= grade;

    }
    FILE * fout= fopen("file.txt", "w+");
    for(int i=0; i<3; i++)
    {
          fprintf(fout, "%s %d\n",names[i] ,grades[i]);
    }
}
