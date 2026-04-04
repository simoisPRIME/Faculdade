programa
{
	
	funcao inicio()
	{
		inteiro n, soma, cont, n_impar
		
		soma = 0

		escreva("Insira um número inteiro positivo: ")
		leia(n)

		se(n < 0) {
			escreva("Número inválido")
		}

		para(cont = 1; cont <= n; cont ++)
		{
			se(cont % 2 == 1) {
				soma = soma + cont
			}
		}

		escreva("A soma dos números ímpares de 1 até N é: ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 290; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */