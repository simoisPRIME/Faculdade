programa
{
	
	funcao inicio()
	{
		inteiro idade, anoatual, anonascimento

		anoatual = 2025

		escreva("Digite o seu ano de nascimento: ")
		leia(anonascimento)

		idade = anoatual - anonascimento

		escreva("Em 2025, você fez/fará ", idade, " anos")

		se(idade >= 18) {
			escreva("\nVocê tem idade o suficiente pra votar e tirar sua carteira de motorista")
			
		} senao se(idade >= 16 e idade < 18) {
			escreva("\nVocê tem idade o suficiente pra votar, mas não conseguirá tirar sua carteira de motorista ainda")
			
		}senao {
			escreva("\nVocê ainda não tem idade o suficiente pra votar e nem para tirar a habilitação")
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