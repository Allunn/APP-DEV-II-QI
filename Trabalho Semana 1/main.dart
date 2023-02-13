void main() {
//Trabalho por Paula Borges Mendes (Allunn) e Bruna Borges Lindner, turma 48 Assis Tarde

  //Atividade 1
  var raio = 2;
  var area = pi * (raio * raio);

  print('Atividade 1');
  print('Area igual ${area.toStringAsFixed(4)}.');

  //Atividade 2

  var chapa = 20;
  var horas = 210;
  var valor = 6.50;

  var salario = (horas * valor);

  print('\n\nAtividade 2');
  print(
      'A chapa do funcionário é $chapa, o seu salário é ${salario.toStringAsFixed(2)} mensal');

  //Atividade3

  var nome = 'João';
  var salarioFixo = 600;
  var vendas = 1230.30;

  var comissao = (vendas * 0.15);
  var receber = (comissao + salarioFixo);

  print('\n\nAtividade 3');
  print('$nome receberá ${receber.toStringAsFixed(2)} esse mês.');

  //Atividade 4

  var calorQ = 50;
  var gasT = 12;
  var energiaDelta = 100;

  var resultado = (energiaDelta - gasT) + calorQ;

  print('\n\nAtividade 4');
  print('O resultado é $resultado J.');

  //Atividade 5

  var trabalho = 12;
  var recebe = 23;

  var conversao = (trabalho / recebe) * 100;

  print('\n\nAtividade 5');
  print(
      'Capacidade percentual de conversão do motor é de ${conversao.toStringAsFixed(2)}%.');
}
