package br.ufmt.ic.poo.classes;

public class Pirata extends Humano{
    private int astucia; //1 a 5
    
    public Pirata(String nome, int vida, String tipo, int inteligencia, int destreza, int forca, int agilidade, int sorte, int impeto, int astucia) {
        super(nome, vida, tipo, inteligencia, destreza, forca, agilidade, sorte, impeto);
        this.astucia = astucia;
    }
    
    @Override
    public int atacar() {
        return (super.atacar() + (agilidade * astucia) + sorte) / 2;
    }
    
    @Override
    public int defender() {
        return super.defender() + agilidade + astucia;
    }
            
}
