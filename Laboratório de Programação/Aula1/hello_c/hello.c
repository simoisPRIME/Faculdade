#include <stdio.h>

int main() {
    char nome[50];

    printf("Por favor, digite seu nome: ");

    // Lê até 49 caracteres (para deixar espaço para o caractere nulo '\0') ou até a quebra de linha.
    // A quebra de linha é incluída na string.
    fgets(nome, sizeof(nome), stdin);

    // Para evitar a quebra de linha extra no final da string (se houver):
    // Percorre a string procurando a quebra de linha e a substitui por '\0'.
    for (int i = 0; nome[i] != '\0'; i++) {
        if (nome[i] == '\n') {
            nome[i] = '\0';
            break;
        }
    }

    printf("Olá, %s! Seja bem-vindo(a).\n", nome);

    return 0;
}