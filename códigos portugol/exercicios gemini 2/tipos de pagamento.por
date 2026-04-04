programa
{
	
	funcao inicio()
	{
		real preco
		cadeia formapag

		escreva("Digite o preço do produto: ")
		leia(preco)

		escreva("Insira a forma de pagamento (1 = à vista, 2 = crédito, 3 = em 2 vezes, 4 = em 3 vezes ou mais): ")
		leia(formapag)

		/* À vista em dinheiro ou pix: 15% de desconto.

		À vista no cartão de crédito: 10% de desconto.

		Em 2x: preço normal, sem juros.

		Em 3x ou mais: 10% de juros.
			
		*/

		se(formapag == "1") {
			preco = preco * 0.85
			escreva("Valor a pagar: R$", preco, " reais")
			
		} senao se(formapag == "2") {
			preco = preco * 0.90
			escreva("Valor a pagar: R$", preco, " reais")
			
		} senao se(formapag == "3") {
			escreva("Valor a pagar: R$", preco, " reais")
			
		} senao se(formapag == "4") {
			preco = preco * 1.10
			escreva("Valor a pagar: R$", preco, " reais")
		}
		

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 837; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */