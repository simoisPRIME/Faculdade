programa
{
	
	funcao inicio()
	{
		real soma, termo
		inteiro cont
		soma = 0.0

		para(cont = 1.0; cont <= 10; cont ++)
		{
			termo = cont / (cont * cont)

			se(cont % 2 == 0) {
				soma = soma - termo
				
			}senao {
				soma = soma + termo
			}
		}
		escreva("A soma é: ",soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 209; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */