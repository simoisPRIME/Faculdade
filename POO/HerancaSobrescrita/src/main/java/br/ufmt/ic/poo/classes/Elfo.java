package br.ufmt.ic.poo.classes;

public class Elfo extends Personagem{
    protected int mana; //1 a 5
    
    public Elfo(String nome, int vida, String tipo, int inteligencia, int destreza, int forca, int agilidade, int sorte, int mana) {
        super(nome, vida, tipo, inteligencia, destreza, forca, agilidade, sorte);
        this.mana = mana;
    }
    @Override
    public int atacar() {
        return super.atacar() + mana;
    }
    
    @Override
    public int defender() {
        return super.defender() + (mana / 2);
    }
    
}
