package br.ic.ufmt.poo.contacorrente.classes;

public class Conta {
    private Cliente cliente;
    private String numConta;
    protected double saldo;

    public Conta(Cliente cliente, String numConta) {
        this.cliente = cliente;
        this.numConta = numConta;
        
        this.saldo = 0.0;
    }
    
    public void getInfo() { //função pra mostrar nome e cpf
        System.out.println("Cliente: " + cliente.getNome());
        System.out.println("CPF: " + cliente.getCpf());
    }
    
    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public String getNumConta() {
        return numConta;
    }
    
    public void enviarPix(double valor, Conta destino){
        getInfo();
        if (saldo > valor) {
            saldo -= valor;
            destino.receberPix(valor);
            System.out.println("Pix enviado para conta: " + destino.getNumConta());
            System.out.println("Saldo atual: " + "R$" + saldo);
        } else {
            System.out.println("ERRO: Saldo Insuficiente");
        }
    }
    
    public double receberPix(double valor) {
        getInfo();
        saldo += valor;
        System.out.println("Pix recebido!");
        return saldo;
    }
    
    public int mostrarSaldo() {
        getInfo();
        if (saldo > 5000000) {
            return -1;
        } else {
            return 1;
            }
        }
}
    
