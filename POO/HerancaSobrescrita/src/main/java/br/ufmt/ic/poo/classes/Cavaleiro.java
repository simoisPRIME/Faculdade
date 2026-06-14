package br.ufmt.ic.poo.classes;

public class Cavaleiro extends Humano{
    private int coragem; //1 a 5
    
    public Cavaleiro(String nome, int vida, String tipo, int inteligencia, int destreza, int forca, int agilidade, int sorte, int impeto, int coragem) {
        super(nome, vida, tipo, inteligencia, destreza, forca, agilidade, sorte, impeto);
        this.coragem = coragem;
    }
    
    @Override
    public int atacar() {
        return (super.atacar() + (forca * coragem)) / 2 ;
    }
    
    @Override
    public int defender() {
        return super.defender() + forca + coragem;
    }
}
