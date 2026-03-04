#include <stdio.h>
#include <string.h>

struct Data {
    int dia;
    int mes;
    int ano;
}

struct Aluno {
    int cod_aluno;
    int cod_curso;
    char nome[50];
    struct Data data_nasc;
    float notas[4];
}

int main() {

}