import'dart:io'; //interagir com o usuario

void main(){
print('Escolha uma operação matemática:');
print('1 - somar');
print('2 - subtrair');
print('3 - multiplicar');
print('4 - dividir\n');

int opcao = int.parse(stdin.readLineSync()!); //stdin é o que será digitado
while (opcao !=0){ //repete até condição ser falsa
print('\nDigite o primeiro número');
double numero1 = double.parse(stdin.readLineSync()!);
print('\nDigite o segundo número');
double numero2 = double.parse(stdin.readLineSync()!);

switch(opcao){
 case 1:
  double resultado = somar(numero1, numero2);
  print('\nO resultado é $resultado');
  break;
 case 2:
  double resultado = subtrair(numero1, numero2);
  print('\nO resultado é $resultado');
  break;
 case 3:
  double resultado = multiplicar(numero1, numero2);
  print('\nO resultado é $resultado');
  break;
 case 4:
  double resultado = dividir(numero1, numero2);
  print('\nO resultado é $resultado');
  break;
default:
  print('\nOperação inválida');
}//final switch
print('\n\nDigite uma nova operação:');
print('1 - somar');
print('2 - subtrair');
print('3 - multiplicar');
print('4 - dividir');
print('0 - terminar operação');
opcao = int.parse(stdin.readLineSync()!);
}//final while
}//final main


//1° parametro
double somar(double n1, double n2) {
  return n1 + n2;
}
//2° parametro
double subtrair(double n1, double n2) {
  return n1 - n2;
}
//3° parametro
double multiplicar(double n1, double n2) {
  return n1 * n2;
}
//4° parametro
double dividir(double n1, double n2) {
  return n1 / n2;
}