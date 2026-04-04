/* Neste novamente usei estruturas de condição
para fazer um sistema de descontos 
usando pontos flutuantes. */

#include <stdio.h>

int main() {
    float preco, preco_final, desconto;

    printf("Digite o preco da compra: ");
    scanf("%f", &preco);

    if (preco <= 100) {
        desconto = preco * 0;
        preco_final = preco - desconto;
        printf("Desconto: R$%.2f | Preco final: R$%.2f", desconto, preco_final);

    } else if (preco <= 301) {
        desconto = preco * 0.10;
        preco_final = preco - desconto;
        printf("Desconto: R$%.2f | Preco final: R$%.2f", desconto, preco_final);

    } else if (preco <= 501) {
        desconto = preco * 0.15;
        preco_final = preco - desconto;
        printf("Desconto: R$%.2f | Preco final: R$%.2f", desconto, preco_final);

    } else {
        desconto = preco * 0.20;
        preco_final = preco - desconto;
        printf("Desconto: R$%.2f | Preco final: R$%.2f", desconto, preco_final);
    }
    
    return 0;
}