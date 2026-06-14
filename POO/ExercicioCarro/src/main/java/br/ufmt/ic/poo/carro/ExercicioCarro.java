package br.ufmt.ic.poo.carro;

import br.ufmt.ic.poo.carro.classes.Carro;

public class ExercicioCarro {

    public static void main(String[] args) {
        Carro palio = new Carro("Fiat", "Palio", 2015, "1.0", "disco"); // carro instanciado
        
        palio.ligar(); //liga
        
        palio.desligar(); //desliga
        palio.desligar(); //forçar erro de desligar
        
        palio.ligar();
        palio.ligar(); //forçar erro de ligar
        
        palio.acelerar();
        palio.acelerar();
        palio.acelerar();
        palio.acelerar();
        palio.acelerar();
        
        System.out.println(""); 
        palio.status(); //status no meio do programa
        System.out.println("");
        
        palio.acelerar();
        palio.acelerar();
        palio.acelerar();
        palio.acelerar(); //acelerar ate velocidade maxima
        
        palio.frear(); //frear ate parar
        palio.frear();
        palio.frear();
        
        System.out.println(""); 
        palio.status(); //status no meio do programa
        System.out.println("");
        
        palio.frear();
        palio.frear(); //carro parou
        palio.frear(); //frear com carro parado

    }
}
