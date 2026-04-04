programa
{
	
	funcao inicio()
	{
		real soma, numerador, denominador, potencia
		inteiro cont

		potencia = 2.0
		soma = 0.0

		para(cont = 1; cont <= 50; cont ++)
		{
			numerador = potencia
			denominador = 51.0 - cont
			soma = soma + numerador / denominador
			potencia =  potencia * 2
			
		}
		escreva("A soma é: ", soma)
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 33; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */