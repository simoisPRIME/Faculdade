package br.ufmt.ic.poo.classes;

public class Humano extends Personagem {
    protected int impeto; // 1 a 5
    
    public Humano(String nome, int vida, String tipo, int inteligencia, int destreza, int forca, int agilidade, int sorte, int impeto) {
        super(nome, vida, tipo, inteligencia, destreza, forca, agilidade, sorte);
        this.impeto = impeto;
    }
    
    @Override
    public int atacar() {
        return (super.atacar() * impeto) / 2;
    }
    
    @Override
    public int defender() {
        return super.defender() + impeto;
    }
    
}
