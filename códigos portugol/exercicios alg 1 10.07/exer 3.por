programa
{
	
	funcao inicio()
	{
		inteiro i, n, soma

		escreva("Valor de n: ")
		leia(n)

		i = 5
		soma = 0
		enquanto(i <= n) {
			soma = soma + (2 * i * i + 5 * i + 1)
			i = i + 1
		}

		escreva("A soma é: ",soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 224; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */