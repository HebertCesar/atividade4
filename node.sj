// Função para determinar a faixa etária com base no ano de nascimento
function determinarFaixaEtaria(anoNascimento) {
    const anoAtual = new Date().getFullYear();
    const idade = anoAtual - anoNascimento;

    if (idade >= 0 && idade <= 12) {
        return 'Criança';
    } else if (idade >= 13 && idade <= 29) {
        return 'Jovem';
    } else if (idade >= 30 && idade <= 59) {
        return 'Adulto';
    } else if (idade >= 60) {
        return 'Idoso';
    } else {
        return 'Ano de nascimento inválido';
    }
}

// Exemplo de uso
const anoNascimento = prompt('Digite seu ano de nascimento:');
const faixaEtaria = determinarFaixaEtaria(parseInt(anoNascimento));
alert(`Você é um(a) ${faixaEtaria}.`);
