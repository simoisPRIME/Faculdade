#include <stdio.h>

int vetor[5];
int numero;

int main() {

    /*
    vetor[8] = 30;
    int tamanho_vetor = sizeof(vetor);
    int tamanho_item = sizeof(vetor[0]);
    int quantidade_itens = tamanho_vetor / tamanho_item;

    printf("\nTamanho vetor: %i", tamanho_vetor);
    printf("\nTamanho item: %i", tamanho_item);
    printf("\nQuantidade de itens: %i", quantidade_itens);

    for (int i=0;i<quantidade_itens;i++) {
        vetor[i] = i * 2;
        printf("\n%d", vetor[i]);
    }
    */

    int numeros[] = {10,11,12,13,14};
    int soma = 0;

    int size_numeros = sizeof(numeros) / sizeof(numeros[0]);

    for (int i=0; i < size_numeros; i++) {
        soma += numeros[i];
        
    }
    printf("Soma total: %d", soma);
    return 0;

}