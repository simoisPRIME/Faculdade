programa
{
	
	funcao inicio()
	{
		inteiro idade, peso, busto, cintura, quadril
		real altura
		cadeia corcabelos
		cadeia olhos
		logico aprovacao = verdadeiro

		se (aprovacao) {
		escreva("Bem vinda a entrevista da vaga de emprego, pra começarmos qual sua idade?: ")
		leia(idade)

		se(idade <= 18) {
			aprovacao = falso
		}
			
		} 

		se (aprovacao) {
			escreva("Agora, qual a cor de seus cabelos?: ")
			leia(corcabelos)
		
			se(corcabelos != "pretos") {
				aprovacao = falso
			}
		}

		se (aprovacao) {
		escreva("Me diga sua altura agora em metros: ")
		leia(altura)

			se(altura <= 1.75) {
				aprovacao = falso
			}
		}

		se (aprovacao) {
		escreva("Qual é o seu peso em quilos?: ")
		leia(peso)

			se(peso > 55 ou 50 > peso) {
				aprovacao = falso
			}
		}

		se (aprovacao) {
		escreva("Qual é o tamanho do seu busto?: ")
		leia(busto)

			se(busto < 85 ou 88 < busto) {
				aprovacao = falso

			}
		}

		se(aprovacao) {
		escreva("Quanto de cintura você tem?: ")
		leia(cintura)

			se(cintura > 62 ou cintura < 60) {
				aprovacao = falso
			}
		}

		se (aprovacao) {
		escreva("Nos diga qual é a cor de seus olhos?: ")
		leia(olhos)

			se(olhos != "pretos" e olhos != "castanhos") {
				aprovacao = falso
			}
		}

		se (aprovacao) {
		escreva("Qual o tamanho do seu quadril?: ")
		leia(quadril)

			se(quadril > 92 ou quadril < 90) {
				aprovacao = falso
			}
		}

		se (aprovacao) {
			escreva("Parabéns! Você foi aprovada na seleção")
		}senao {
			escreva("Infelizmente você não atendeu aos requisitos!")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1306; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */