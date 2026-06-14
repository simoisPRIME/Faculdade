package br.ufmt.ic.poo.classes;

public class Feiticeiro extends Elfo{
    private int poderArcano; //1 a 5
    
    public Feiticeiro(String nome, int vida, String tipo, int inteligencia, int destreza, int forca, int agilidade, int sorte, int mana, int poderArcano) {
        super(nome, vida, tipo, inteligencia, destreza, forca, agilidade, sorte, mana);
        this.poderArcano = poderArcano;
    }
    
    @Override
    public int atacar() {
        return (super.atacar() + (inteligencia * poderArcano) + mana) / 2;
    }
    
    @Override
    public int defender() {
        return super.defender() + inteligencia + poderArcano;
    }
    
}
