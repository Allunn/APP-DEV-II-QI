void main() {
  //Trabalho por Paula Borges Mendes (Allunn) e Bruna Borges Lindner, turma 48 Assis Tarde

//Atividade 1

  var a = 5;
  var b = 6;
  var c = 7;
  var d = 8;

  print('Atividade 1');

  if (b > c && d > a && c + d > a + b && c > 0 && d > 0 && a % 2 == 0) {
    print('Valores Aceitos');
  } else {
    print('Valores Não Aceitos');
  }

//Atividade 2

  //Primeira Nota
  var nome = 'Alice';
  var notaA = 9;
  var notaB = 9;
  var notaC = 9;
  var notaD = 9;
  var media = (notaA + notaB + notaC + notaD) / 4;

  //Segunda Nota
  var notaExame = 0;
  var novaMedia = (media + notaExame) / 2;

  print('\n\nAtividade 2');
  print('Nota média de $nome: $media');

  if (media >= 7) {
    print('Aluno(a) Aprovado(a)');
  } else if (notaExame == 0) {
    print('Recuperação Pendente');
  } else {
    print('Nota Media da Recuperação: $novaMedia');
    if (novaMedia >= 5) {
      print('Aluno(a) Aprovado(a)');
    } else {
      print('Aluno(a) Reprovado(a)');
    }
  }

//Atividade 3

  num ladoA = 7;
  num ladoB = 5;
  num ladoC = 7;

  print('\n\nAtividade 3');
  print('Valores:\nLado A = $ladoA \nLado B = $ladoB \nLado C = $ladoC');

  if (ladoA * ladoA == ladoB * ladoB + ladoC * ladoC) {
    print('Triângulo Retângulo');
  }
  if (ladoA * ladoA > ladoB * ladoB + ladoC * ladoC) {
    print('Triângulo Obtusângulo');
  }
  if (ladoA * ladoA < ladoB * ladoB + ladoC * ladoC) {
    print('Triângulo Acutângulo');
  }
  if (ladoA == ladoB && ladoB == ladoC) {
    print('Triângulo Equilátero');
  }
  if (ladoA == ladoB || ladoB == ladoC || ladoA == ladoC) {
    print('Triângulo Isósceles');
  }
  if (ladoA >= ladoB + ladoC) {
    print('Não Forma Triângulo');
  }

//Atividade Quatro

  var jogadorUm = 'par';
  num jogadorUmN = 2;

  num jogadorDoisN = 2;

  print('\n\nAtividade 4');
  if ((jogadorUmN + jogadorDoisN) % 2 == 0 && jogadorUm == 'par') {
    print('Jogador UM é o vencedor!');
  } else {
    print('Jogador DOIS é o vencedor!');
  }
}
