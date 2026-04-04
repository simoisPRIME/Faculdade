/* Introdução à funções em C, fiz um algoritmo que 
manipula matrizes bidimensionais impelementando
as funções e bibliotecas, em específico a time.h
para geração de números diferentes toda vez que é executada.
No problema também pedia a soma de todas as linhas e colunas. */


#include <stdio.h>
#include <stdlib.h>
#include <time.h>

const int min_rand = 1;
const int max_rand = 100;
const int max_colunas = 12;
const int max_linhas = 12;

void popularMatriz(int m[max_linhas][max_colunas], int l, int c) {
    for(int i = 0; i < l; i++) {
        for(int j = 0; j < c; j++) {
            m[i][j] = (rand() % (max_rand - min_rand + 1)) + min_rand;
        }
    }
}

int somaMatriz(int m[max_linhas][max_colunas], int l, int c) {
    int soma = 0;
    for(int i = 0; i < l; i++) {
        for(int j = 0; j < c; j ++) {
            soma += m[i][j];
        }
    }
    return soma;
}

void exibirMatriz(int m[max_linhas][max_colunas], int l, int c) {
    for(int i = 0; i < l; i++) {
        for(int j = 0; j < c; j ++) {
            printf("%d\t", m[i][j]);
        }
        printf("\n");
    }
}

int main () {
    int colunas, linhas, totalMatriz;
    int matriz[max_linhas][max_colunas];
    srand(time(NULL));

    printf("Digite o numero de colunas da matriz (Minimo 2): ");
    scanf("%d", &colunas);

    if (colunas < 2 || colunas > max_colunas) {
        printf("Erro: numero de colunas deve ser entre 2 e %d\n", max_colunas);
    } else {
        printf("Digite o numero de linhas da matriz (Minimo 2): ");
        scanf("%d", &linhas);
        printf("\n");
        if (linhas < 2 || linhas > max_linhas) {
            printf("Erro: numero de linhas deve ser entre 2 e %d\n", max_linhas);
        } else {
            popularMatriz(matriz, linhas, colunas);
            exibirMatriz(matriz, linhas, colunas);
            totalMatriz = somaMatriz(matriz, linhas, colunas);
            printf("\nA soma total desta matriz e: %d\n", totalMatriz);
        }
    }

    return 0;
}