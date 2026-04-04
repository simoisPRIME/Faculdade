programa
{
	
	funcao inicio()
	{
		const real salario_minimo = 1518.0
		inteiro dependentes
		real salario_funcionario, imposto_pago, imposto_bruto, imposto_liquido, imposto_taxado, imposto_final

		escreva("Insira seu salário: ")
		leia(salario_funcionario)
		
			se(salario_funcionario > 12 * salario_minimo) {
				imposto_bruto = (0.20 * salario_funcionario)
				
				}senao se (salario_funcionario > 5 * salario_minimo) {
					imposto_bruto = (0.08 * salario_funcionario)
					
					}senao{
						imposto_bruto = (0)
						
						}
		escreva("Quanto de imposto você já pagou?: ")
		leia(imposto_pago)

		escreva("Quantos dependentes você possui?: ")
		leia(dependentes)

		imposto_taxado = 1.04 * imposto_bruto
		imposto_liquido = (-300 * dependentes) + imposto_taxado
		imposto_final = imposto_pago - imposto_liquido

			se(imposto_final < 0) {
				escreva("Você tem R$", imposto_final * -1 , " pra pagar")
				
			}senao{
				escreva("Você tem R$", imposto_final, " pra receber")
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1002; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */