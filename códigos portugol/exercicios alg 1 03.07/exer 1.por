programa
{
	inclua biblioteca Matematica
	funcao inicio()
	{

		real a, b, c, x1, x2, delta
		
		escreva("Insira os valores dos coeficiente A: ")
		leia(a)

		escreva("Insira os valores dos coeficiente B: ")
		leia(b)

		escreva("Insira os valores dos coeficiente C: ")
		leia(c)

		delta = b * b - 4 * a * c

		escreva("Delta: ", delta)

		se(delta >= 0 ) {
			x1 = (-b + Matematica.raiz(delta, 2)) / (2*a)
			x2 = (-b - Matematica.raiz(delta, 2)) / (2*a)
			escreva("\nX1: ", x1, "\nX2: ", x2)
			
		} senao {
			escreva("\nEquação não gerá raízes")
		}
			
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 556; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */