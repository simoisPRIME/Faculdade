programa
{
    funcao inicio()
    {
        inteiro n, contador, numero_atual, maior_numero

        escreva("Digite a quantidade de numeros: ")
        leia(n)

        maior_numero = 0

        para (contador = 1; contador <= n; contador++)
        {
            escreva("Digite um numero: ")
            leia(numero_atual)

            se (contador == 1)
            {
                maior_numero = numero_atual
            }
            senao
            {
                se (numero_atual > maior_numero)
                {
                    maior_numero = numero_atual
                }
            }
        }

        escreva("O maior numero foi: ", maior_numero)
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 682; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */