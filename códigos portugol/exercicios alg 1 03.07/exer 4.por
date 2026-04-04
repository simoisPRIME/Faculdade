programa
{
	
	funcao inicio()
	{
		inteiro a, b, c

		escreva("A: ")
		leia(a)

		escreva("B: ")
		leia(b)

		escreva("C: ")
		leia(c)

		se(a<b e b<c) {
			escreva("O menor número é: ", a)
			
		}senao se(a<c e c<b) {
			escreva("O menor número é: ", a)

		}senao se(b<a e a<c) {
			escreva("O menor número é: ", b)
			
		}senao se(b<c e c<a) {
			escreva("O menor número é: ", b)
			
		}senao se(c<a e a<b) {
			escreva("O menor número é: ", c)
			
		}senao{
			escreva("O menor número é: ", c)
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 511; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */