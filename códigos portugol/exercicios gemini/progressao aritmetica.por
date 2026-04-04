programa
{
	
	funcao inicio()
	{
		inteiro primeiro_termo, razao, n, soma, termo_atual, cont
		soma = 0

		escreva("Insira o primeiro termo da P.A: ")
		leia(primeiro_termo)

		termo_atual = primeiro_termo
		
		escreva("Escreva a razão da P.A: ")
		leia(razao)

		escreva("Escreva a quantidade de termos da P.A: ")
		leia(n)

		para(cont = 1; cont <= n; cont ++)
		{
			escreva("\n", termo_atual)
			soma = soma + termo_atual
			termo_atual = termo_atual + razao
			
		}
		escreva("\nA soma da P.A é: ", soma)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 401; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */