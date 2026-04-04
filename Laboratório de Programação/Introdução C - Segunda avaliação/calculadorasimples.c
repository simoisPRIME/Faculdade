/* Atividades iniciais para aprender os conceitos básicos
em C. Neste fiz uma calculadora básica implementada
com loops e estruturas de condição*/


#include <stdio.h>

int main() {
    float n1, n2, resultado;
    int operacao;

    while(operacao != 9) {
        printf("----OPERACOES----\n");
        printf("1 - Divisao\n");
        printf("2 - Soma\n");
        printf("3 - Subtracao\n");
        printf("4 - Multiplicacao\n");
        printf("9 - Sair\n");
        printf("Digite o numero da operacao: \n");
        scanf("%i", &operacao);

        printf("Digite o primeiro numero: \n");
        scanf("%f", &n1);
        printf("Digite o segundo numero: \n");
        scanf("%f", &n2);

        if (operacao == 1) {
            if (n2 != 0) {
                resultado = n1 / n2;
                printf("%.2f / %.2f = %.2f\n", n1, n2, resultado);
            } else {
                printf("Erro na divisão, denominador igual ou menor que 0!");
            }

        } else if (operacao == 2) {

            resultado = n1 + n2;
            printf("%.2f + %.2f = %.2f\n", n1, n2, resultado);

        } else if (operacao == 3) {

            resultado = n1 - n2;
            printf("%.2f - %.2f = %.2f\n", n1, n2, resultado);

        } else if (operacao == 4) {

            resultado = n1 * n2;
            printf("%.2f * %.2f = %.2f\n", n1, n2, resultado);

        } else if (operacao == 9) {
            printf("Saindo...");
            break;
        }
    }

    return 0;   
}