programa
{
	
	funcao inicio()
	{
		real soma, cont, termo, qtd

		soma = 0.0
		cont = 1.0
		qtd = 0.0

		enquanto(soma <= 5.0) {
			termo = 1.0 / cont
			soma = soma + termo
			cont = cont + 1
			qtd = qtd + 1
		}
		escreva(soma)
		escreva("\n", qtd, " vezes")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 106; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */