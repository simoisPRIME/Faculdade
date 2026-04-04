programa
{
	
	funcao inicio()
	{
		inteiro idade, ano

		escreva("Insira seu ano de nascimento: ")
		leia(ano)

		idade = 2025 - ano

		se(idade <= 9) {
			escreva("Categoria: Mirim")
			
		}senao se(idade <= 14) {
			escreva("Categoria: Infantil")
			
		}senao se(idade <= 19) {
			escreva("Categoria: Júnior")
			
		}senao se(idade <= 25) {
			escreva("Categoria: Sênior")
			
		}senao {
			escreva("Categoria: Master")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 392; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */