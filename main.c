#include <stdio.h>
#include "kwadrat.h"
#include "szescian.h"



int main()
{
    int warunek=0;
    float a;
    while(warunek!=3)
    {
        printf("Co chcesz zrobic?\n");
        printf("1. Oblicz pole kwadratu\n2. Oblicz objetosc szescianu\n3. Wyjscie\n\n");
        scanf("%d", &warunek);
        switch(warunek)
        {
            case 1: printf("Podaj krawedz kwadratu:"); scanf("%f",&a); Pole_kwadratu(a); break;
            case 2: printf("Podaj krawedz szescianu:"); scanf("%f",&a); Objetosc_szescianu(a);break;
            case 3: printf("Wybrano wyjscie z programu!!\n"); break;
            default: printf("Bledny wybor!!\n");
        }
    }

    return 0;
}
