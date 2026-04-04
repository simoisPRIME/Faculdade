/*Mesmo código do registro.c porém utilizando alocação dinâmica.
Implementei o gerenciamento de memória dinamicamente através de alocação com malloc 
e liberação total de nós ao encerrar o programa.*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define QTD_FILIAIS 4

struct filial {
    char nomeFilial[40];
    int quantidade;
};

struct produto {
    char nome[30];
    float preco;
    struct filial estoques[QTD_FILIAIS];
    struct produto *proximo;
};

void inserir(struct produto **lista, int *total) {
    struct produto *novo = malloc(sizeof(struct produto));

    if (novo == NULL) {
        printf("Erro: Memoria insuficiente!.\n");
        return;
    }

    printf("Nome do produto: ");
    scanf(" %[^\n]", novo->nome);
    printf("Preco do produto: ");
    scanf("%f", &novo->preco);
    
    for(int i = 0; i < QTD_FILIAIS; i++) {
        printf("Nome da filial %d: ", i + 1);
        scanf(" %[^\n]", novo->estoques[i].nomeFilial);
        
        printf("Quantidade em estoque na filial %s: ", novo->estoques[i].nomeFilial);
        scanf("%d", &novo->estoques[i].quantidade);
    }

    novo->proximo = *lista;
    *lista = novo;

    (*total)++;
    printf("Produto cadastrado.\n");
    return;
}

void listar(struct produto *lista, int total) {
    if (lista == NULL) {
        printf("Nenhum produto cadastrado.\n");
        return;
    }

    struct produto *atual = lista;
    int contador = 1;
    printf("\n========= RELATORIO DE PRODUTOS =========\n");
    while(atual != NULL) {
        printf("\nProduto %d: %s", contador, atual->nome);
        printf("\nPreco: %.2f", atual->preco);

        int somaTotal = 0;
        printf("\nEstoques por Filial");
        for(int j = 0; j < 4;j++) {
            printf("\n -> %s: %d unidades", atual->estoques[j].nomeFilial, atual->estoques[j].quantidade);
            somaTotal += atual->estoques[j].quantidade;
        }
        printf("\nEstoque total do produto em todas as filiais: %d", somaTotal);
        printf("\n------------------------------------------\n");

        atual = atual->proximo;
        contador++;
    }
    return;
}

void apagar(struct produto **lista, int *total) {
    if (*lista == NULL) {
        printf("\nNao existe produto cadastrado pra apagar.");
        return;
    } 

    printf("\n--- Produtos Cadastrados ---\n");
    struct produto *atual = *lista;
    int contador = 1;

    while(atual != NULL) {
        printf("%d -> %s\n", contador, atual->nome);
        atual = atual->proximo;
        contador++;
    }

    printf("\nDigite o numero do produto a ser excluido: ");
    int indice; //mesmo valor de contador
    scanf("%d", &indice);

    if (indice < 1 || indice > *total) {
        printf("Indice invalido! Tente novamente.\n");
        return;
    }

    if (indice == 1) {
        struct produto *temp = *lista;
        *lista = (*lista)->proximo;
        free(temp);
    } else {
        struct produto *anterior = *lista;
        for(int i = 1;i < indice - 1;i++) {
            anterior = anterior->proximo;
        }
        
        struct produto *aApagar = anterior->proximo;
        anterior->proximo = aApagar->proximo;
        free(aApagar);
    }

    (*total)--;
    printf("Produto apagado com sucesso");
    return; 
}

int main() {
    int operacao = 0;
    int totalCadastrados = 0;

    struct produto *lista = NULL;

    while (operacao != 9) {
        printf("\n----Registro----\n");
        printf("1 - Inserir\n");
        printf("2 - Listar\n");
        printf("3 - Apagar\n");
        printf("9 - Fechar\n");
        printf("Digite o numero da operacao: ");
        scanf("%i", &operacao);

        if(operacao == 1) {
            inserir(&lista, &totalCadastrados);
        } else if(operacao == 2) {
            listar(lista, totalCadastrados); //nao usa o & pois a função nao altera (nao insere ou apaga) a lista, apenas mostra ela
        } else if(operacao == 3) {
            apagar(&lista, &totalCadastrados);
        } else if(operacao == 9) {
            printf("Fechando...");
            while(lista != NULL){
                struct produto *temp = lista;
                lista = lista->proximo;
                free(temp);
            }
            break;
        } else {
            printf("Operacao nao existente! Tente novamente.\n");
        }
    }
    
    return 0;
}