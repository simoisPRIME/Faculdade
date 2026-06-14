package br.ufmt.ic.poo.classes;

public class Arqueiro extends Elfo{
    private int precisao; //1 a 5
    
    public Arqueiro(String nome, int vida, String tipo, int inteligencia, int destreza, int forca, int agilidade, int sorte, int mana, int precisao) {
        super(nome, vida, tipo, inteligencia, destreza, forca, agilidade, sorte, mana);
        this.precisao = precisao;
    }
    
    @Override
    public int atacar() {
        return (super.atacar() + (destreza * precisao) + agilidade) / 2;
    }
    
    @Override
    public int defender() {
        return super.defender() + agilidade + precisao;
    }
}
