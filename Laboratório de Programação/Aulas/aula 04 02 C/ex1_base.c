#include <stdio.h>

int main() {
    int altura;
    int base;
    float area;

    printf("Digite a base do triangulo: \n");
    scanf("%i", &base);

    printf("Digite a altura do triangulo: \n");
    scanf("%i", &altura);

    area = (base * altura) / 2.0;

    printf("A area do seu triangulo e: %.2f\n", area);

    return 0;

}
