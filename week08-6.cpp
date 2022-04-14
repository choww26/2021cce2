#include <stdio.h>
#include <string.h>
char names[20][20];
int grades[20];
int main()
{

	FILE * fin = fopen("file.txt", "r+");
	char name[20];
	int grade;
	for(int i=0; i<20; i++)
    {
        fscanf(fin, "%s", name);
        fscanf(fin, "%d", &grade);
        strcpy( names[i], name );
        grades[i]= grade;

    }
    for(int i=0; i<20; i++)
    {
        printf("%s %d\n",names[i] ,grades[i]);
    }
}
