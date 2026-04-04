programa
{
	
	funcao inicio()
	{
		inteiro n, cont, fatorial
		fatorial = 1

		escreva("Insira um número inteiro positivo: ")
		leia(n)

		para(cont = 1; cont <= n; cont ++) {
			fatorial = fatorial * cont
		}

		escreva("O fatorial de ", n, " é: ", fatorial)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 271; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */