#include <stdio.h>

int main() {
    float altura;
    float peso;

    printf("Insira sua altura em metros: \n");
    scanf("%f", &altura);

    printf("Insira seu peso em quilos (kg): \n");
    scanf("%f", &peso);

    float imc = peso / (altura * altura);

    printf("-------TABELA IMC-------\n");
    printf("Menor que 18.5 -> Abaixo do peso\n");
    printf("18.5 a 24.9	-> Peso normal\n");
    printf("25.0 a 29.9	-> Sobrepeso\n");
    printf("30.0 ou mais -> Obesidade\n");
    printf("-------------------------\n");

    if (imc < 18.5) {
        printf("Seu IMC: Abaixo do peso\n");
    } else if (imc <= 24.9) {
        printf("Seu IMC: Peso normal\n");
    } else if (imc <= 29.9) {
        printf("Seu IMC: Sobrepeso\n");
    } else {
        printf("Seu IMC: Obesidade\n");
    }

    return 0;
}
