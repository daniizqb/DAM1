#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define randomize srand(time(NULL))
#define random(n) (rand()%n)

int main() {
    int i = 0;

    randomize;

    for (i = 0; i < 10; i++)
        printf("%d\n",rand());

    for (i = 0; i < 10; i++)
        printf("%d\n",random(11));

    return 0;
}
