programa
{
	
	funcao inicio()
	{
		inteiro n1, n2, n3, n4
		
		escreva("Digite 4 números: ")
		leia(n1, n2, n3, n4)

		escreva("\nOs múltiplos de 4: ")

		se(n1 % 4 ==0) {
			escreva(n1, " ")
		}

		se(n2 % 4 ==0){
			escreva(n2, " ")
		}

		se(n3 % 4 ==0) {
			escreva(n3, " ")
		}

		se(n4 % 4 ==0) {
			escreva(n4, " ")
		}

		escreva("\nOs múltiplos de 3: ")

		se(n1 % 3 ==0) {
			escreva(n1, " ")
		}

		se(n2 % 3 ==0){
			escreva(n2, " ")
		}

		se(n3 % 3 ==0) {
			escreva(n3, " ")
		}

		se(n4 % 3 ==0) {
			escreva(n4, " ")
		}

		escreva("\nOs múltiplos de 3 OU 4 são: ")

		se((n1 % 4 == 0) ou (n1 % 3 ==0)) {
			escreva(n1, " ")
		}

		se((n2 % 4 == 0) ou (n2 % 3 ==0)) {
			escreva(n2, " ")
		}

		se((n3 % 4 == 0) ou (n3 % 3 ==0)) {
			escreva(n3, " ")
		}

		se((n4 % 4 == 0) ou (n4 % 3 ==0)) {
			escreva(n4, " ")
		}

		escreva("\nOs múltiplos de 3 E 4 são: ")

		se((n1 % 4 == 0) e (n1 % 3 ==0)) {
			escreva(n1, " ")
		}

		se((n2 % 4 == 0) e (n2 % 3 ==0)) {
			escreva(n2, " ")
		}

		se((n3 % 4 == 0) e (n3 % 3 ==0)) {
			escreva(n3, " ")
		}

		se((n4 % 4 == 0) e (n4 % 3 ==0)) {
			escreva(n4, " ")
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 289; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */