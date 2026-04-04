programa
{
	
	funcao inicio()
	{
		inteiro a, b, c

		leia(a, b, c)
		
		se(a>=b e b>=c) {
			escreva(a," ", b," ", c)
			
		}senao se(a>=c e c>=b) {
			escreva(a," ", c," ", b)
			
		}senao se(b>=c e c>=a) {
			escreva(b," ", c," ", a)
			
		}senao se(b>=a e a>=c) {
			escreva(b," ", a," ", c)
			
		}senao se(c>=a e a>=b) {
			escreva(c," ", a," ", b)
			
		}senao{
			escreva(c," ", b," ", a)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 240; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */