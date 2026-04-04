programa
{
	
	funcao inicio()
	{
		inteiro idade, soma, quantidade

		soma = 0
		quantidade = 0

		escreva("Insira sua idade: ")
		leia(idade)

		enquanto(idade != 0) {
			soma = soma + idade
			quantidade = quantidade + 1
			escreva("Insira a próxima idade (Digite '0' para sair): ")
			leia(idade)
			
		}
		se(quantidade > 0) {
			real media
			media = soma / quantidade
			escreva("A média das idades fornecidas é: ", media)
			
		}senao {
			escreva("Nenhuma idade foi digitada")
		}
		
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 227; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */