// A função prompt() não existe no Node.js, então usamos o 'readline-sync'
const readline = require('readline-sync');
let nome = readline.question("Qual seu nome?: "); // <-- LINHA ALTERADA

function capitalizarNome(str) {
    if (!str) {
        return "Convidado";
    }
    // Garante que o restante do nome é minúsculo, tratando nomes como "ARTHUR"
    return str.charAt(0).toUpperCase() + str.slice(1).toLowerCase();
}

function bemVindo() {
    let nomeCapitalizado = capitalizarNome(nome);
    let mensagem = "Bem-vindo " + nomeCapitalizado;
    console.log(mensagem);
}

bemVindo();