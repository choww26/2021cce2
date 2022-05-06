#include <stdio.h>
#include <string.h>
#include <map>
#include <string>
char line[100];
int main()
{
    int T;
    FILE * fin = fopen("input.txt", "r");
    fscanf(fin, "%d", &T);
    printf("你讀到了T: %d\n", T);
    std::map< std::string, int > table;

    while( fgets(line, 100, fin) ){
        line[ strlen(line)-1 ] = 0;
        printf("讀到了= %s =\n", line);
        table[ line ]++;
    }
}
