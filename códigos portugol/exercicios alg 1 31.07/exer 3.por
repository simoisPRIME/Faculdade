programa
{
	
	funcao inicio()
	{
		inteiro num

		para(num = 1; num <= 1001; num ++)
		{
			se( (num % 2 == 0) e (num % 5 != 0) e (num % 7 != 0)){
				escreva("\nNúmeros pares NÃO múltiplos de 5 nem de 7: ", num)
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 203; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */