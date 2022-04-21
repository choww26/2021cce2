#include <stdio.h>

int main()
{///檔案的指標 要open            開啟方式write+
	FILE * fout=fopen("檔名.txt", "w+");
	fprintf(fout, "Hello 我在檔案裡\n");

	printf("Hello World\n");
}
