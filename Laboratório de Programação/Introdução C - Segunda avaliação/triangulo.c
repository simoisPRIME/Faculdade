#include <stdio.h>

/* Último exercício da lista, e o mais simples.*/

int main() {
    float lado_a, lado_b, lado_c;

    printf("Digite o valor do lado A: ");
    scanf("%f", &lado_a);
    printf("Digite o valor do lado B: ");
    scanf("%f", &lado_b);
    printf("Digite o valor do lado C: ");
    scanf("%f", &lado_c);

    if ((lado_a + lado_b) > lado_c && (lado_a + lado_c) > lado_b && (lado_b + lado_c) > lado_a) {
        if (lado_a == lado_b && lado_b == lado_c) {
            printf("Triangulo possivel e equilatero\n");

        } else if (lado_a != lado_b && lado_a != lado_c && lado_b != lado_c) {
            printf("Triangulo possivel e escaleno\n");
        } else {
            printf("Triangulo possivel e isosceles\n");

        }
    } else {
        printf("Os lados informados nao podem formar um triangulo\n");
    }
    
    return 0;
}