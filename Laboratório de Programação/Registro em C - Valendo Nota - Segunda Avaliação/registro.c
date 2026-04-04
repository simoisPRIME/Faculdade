/* Exercício original (Alocação Dinâmica - Valendo Nota - Segunda Avaliação)
 onde utilizei alocação estática de memória via arrays de tamanho fixo.
Em suma é um gerenciador de produtos e estoques por filiais através 
de structs aninhadas e manipulação direta de índices junto com um CRUD.*/

#include <stdio.h>
#include <string.h>

const int max_estoque = 5;
const int qtd_filiais = 4;

struct filial {
    char nomeFilial[40];
    int quantidade;
};

struct produto {
    char nome[30];
    float preco;
    struct filial estoques[qtd_filiais];
};

void inserir(struct produto lista[], int *total) {
    if (*total >= max_estoque) {
        printf("Erro: Estoque cheio.\n");
        return;
    }

    printf("Nome do produto: ");
    scanf("%[^\n]", lista[*total].nome);
    printf("Preco do produto: ");
    scanf("%f", &lista[*total].preco);
    
    for(int i = 0; i < 4; i++) {
        printf("Nome da filial %d: ", i + 1);
        scanf("%[^\n]", lista[*total].estoques[i].nomeFilial);
        
        printf("Quantidade em estoque na filial %s: ", lista[*total].estoques[i].nomeFilial);
        scanf("%d", &lista[*total].estoques[i].quantidade);
    }

    (*total)++;
    printf("Produto cadastrado.\n");
    return;
}

void listar(struct produto lista[], int total) {
    if (total == 0) {
        printf("Nenhum produto cadastrado.\n");
        return;
    }
    printf("\n========= RELATORIO DE PRODUTOS =========\n");
    for(int i = 0; i < total; i++) {
        printf("\nProduto %d: %s", i + 1, lista[i].nome);
        printf("\nPreco: %.2f", lista[i].preco);

        int somaTotal = 0;
        printf("\nEstoques por Filial");
        for(int j = 0; j < 4;j++) {
            printf("\n -> %s: %d unidades", lista[i].estoques[j].nomeFilial, lista[i].estoques[j].quantidade);
            somaTotal += lista[i].estoques[j].quantidade;
        }
        printf("\nEstoque total do produto em todas as filiais: %d", somaTotal);
        printf("\n------------------------------------------\n");
    }
    return;
}

void apagar(struct produto lista[], int *total) {
    if (*total == 0) {
        printf("\nNao existe produto cadastrado pra apagar.");
        return;
    } else {
        int indice;
        printf("\n--- Produtos Cadastrados ---\n");
        for(int i = 0;i < *total;i++) {
            printf("\n%d -> %s", i + 1, lista[i].nome);
        }

        printf("\nDigite o numero do produto a ser excluido: ");
        scanf("%d", &indice);

        int pos = indice - 1;

        if (pos < 0 || pos >= *total) {
            printf("Erro: Indice inexistente\n");
            return;
        } else {
            for(int i = pos; i < *total - 1; i++) {
                lista[i] = lista [i + 1];
            }
        }
        printf("\nProduto %d apagado com sucesso\n", indice);
        (*total)--;
        }
    return; 
}

int main() {
    int operacao = 0;
    int totalCadastrados = 0;

    struct produto lista[max_estoque];

    while (operacao != 9) {
        printf("\n----Registro----\n");
        printf("1 - Inserir\n");
        printf("2 - Listar\n");
        printf("3 - Apagar\n");
        printf("9 - Fechar\n");
        printf("Digite o numero da operacao: ");
        scanf("%i", &operacao);

        if(operacao == 1) {
            inserir(lista, &totalCadastrados);
        } else if(operacao == 2) {
            listar(lista, totalCadastrados); //nao usa o & pois a função nao altera (nao insere ou apaga) a lista, apenas mostra ela
        } else if(operacao == 3) {
            apagar(lista, &totalCadastrados);
        } else if(operacao == 9) {
            printf("Fechando...");
            break;
        } else {
            printf("Operacao nao existente! Tente novamente.\n");
        }
    }
    
    return 0;
}