package br.ufmt.ic.poo.carro.classes;

public class Motor {
    private int velocidadeMax, taxaAceleracao;

    public Motor(int velocidadeMax, int taxaAceleracao) {
        this.velocidadeMax = velocidadeMax;
        this.taxaAceleracao = taxaAceleracao;
    }

    public int getVelocidadeMax() {
        return velocidadeMax;
    }

    public int getTaxaAceleracao() {
        return taxaAceleracao;
    }
    
    
}
