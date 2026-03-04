#include <stdio.h>

int main() {
    float pi;
    float raio;

    printf("Digite o raio do circulo: \n");
    scanf("%f", &raio);
    
    pi = 3.14159;

    float area = pi * (raio * raio);
    printf("A area do seu circulo e: %.5f\n", area);

}