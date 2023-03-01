import 'dart:math';
void main() {
  List<int> lista = List.generate(10, (_) => Random().nextInt(50));
  num localPar = 0;
  num localImpar = 0;

  for (int i = 0; i < 10; i++,) {
    if (lista[i] % 2 == 0) {
      print('PAR[${localPar += 1}] = ${lista[i]}');
    } else {
      print('IMPAR[${localImpar += 1}] = ${lista[i]}');
    }
  }
}