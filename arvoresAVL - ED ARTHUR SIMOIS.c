#include <stdio.h>
#include <stdlib.h>

typedef struct arvAVL {
    int altura;
    struct arvAVL *esquerda;
    struct arvAVL *direita;
    int x;
} arvore;

int altura(arvore *no) {
    return no == NULL ? 0 : no->altura;
}

int fb(arvore *no) {
    return altura(no->esquerda) - altura(no->direita);
}

void atualizarAltura(arvore *no) {
    int he = altura(no->esquerda), hd = altura(no->direita);
    no->altura = 1 + (he > hd ? he : hd);
}

arvore* rotDir(arvore *y) {
    arvore *x = y->esquerda;
    y->esquerda = x->direita;
    x->direita  = y;
    atualizarAltura(y);
    atualizarAltura(x);
    return x;
}

arvore* rotEsq(arvore *x) {
    arvore *y = x->direita;
    x->direita  = y->esquerda;
    y->esquerda = x;
    atualizarAltura(x);
    atualizarAltura(y);
    return y;
}

arvore* balancear(arvore *no) {
    atualizarAltura(no);
    int f = fb(no);

    if (f >  1) {
        if (fb(no->esquerda) < 0)
            no->esquerda = rotEsq(no->esquerda);
        return rotDir(no);
    }
    if (f < -1) {
        if (fb(no->direita) > 0)
            no->direita = rotDir(no->direita);
        return rotEsq(no);
    }
    return no;
}

arvore* inserir(arvore *raiz, int valor) {
    if (raiz == NULL) {
        arvore *novo   = malloc(sizeof(arvore));
        novo->x        = valor;
        novo->esquerda = NULL;
        novo->direita  = NULL;
        novo->altura   = 1;
        return novo;
    }

    if      (valor < raiz->x) raiz->esquerda = inserir(raiz->esquerda, valor);
    else if (valor > raiz->x) raiz->direita  = inserir(raiz->direita,  valor);
    else return raiz;

    return balancear(raiz);
}

void emOrdem(arvore *no) {
    if (no == NULL) return;
    emOrdem(no->esquerda);
    printf("%d ", no->x);
    emOrdem(no->direita);
}

int main() {
    arvore *raiz = NULL;
    int valores[] = {10, 20, 30, 40, 50, 25};

    for (int i = 0; i < 6; i++)
        raiz = inserir(raiz, valores[i]);

    emOrdem(raiz);
    printf("\n");
}