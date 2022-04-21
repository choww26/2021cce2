#include <stdio.h>
#include <stdlib.h>
#include <string.h>
char line[2001][80];
int compare(const void*p1,const void*p2)
{
	return strcmp((char*)p1,(char*)p2);
}
int main()
{
	int N;
	scanf("%d\n",&N);
	for(int i=0;i<N;i++)
	{
		scanf("%s",line[i]);
		char others[80];
		gets(others);
	}
	qsort(line,N,80,compare);
	line[N][0]=0;
	int combo=1;
	for(int i=0;i<N;i++)
	{
		if(strcmp(line[i],line[i+1])==0)
		{
			combo++;
		}
		else
		{
			printf("%s %d\n",line[i],combo);
		}
	}
	return 0;
}
