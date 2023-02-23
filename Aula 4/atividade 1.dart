import 'dart:io';

void main() {
  print('digite um número inteiro e positivo');
  String numero = stdin.readLineSync()!;
  int numeroConvertido = int.parse(numero);

  if (numeroConvertido < 0) {
    numeroConvertido = numeroConvertido.abs();
    numero = numeroConvertido.toString();
  }
  List<String> digitos = numero.split('');
  int cont = 0;

  for (int i = 0; i < digitos.length; i++) {
    cont++;
  }

  print('O número $numero possui $cont digitos');
}
