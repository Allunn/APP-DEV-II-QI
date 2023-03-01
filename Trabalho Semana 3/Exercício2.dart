void main() {
//Trabalho por Paula Borges Mendes (Allunn) e Bruna Borges Lindner, turma 48 Assis Tarde
  //Atividade 2
  print('Atividade 2');

  double numero = 100;
  print('[0]= $numero');

  for (double i = 1; i < 100; i++) {
    double calculo = numero /= 2;
    print('[$i] = $calculo');
  }
}