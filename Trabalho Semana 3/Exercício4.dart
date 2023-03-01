import 'dart:math';
void main() {
  List<int> lista = List.generate(101, (_) => Random().nextInt(100 + 50) - 50);

  for (int i = 0; i < 101; i++,) {
    if (lista[i] < 10) {
      print('N[$i] = ${lista[i]}');
    } 
  } 
}