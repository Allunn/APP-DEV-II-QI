import 'dart:math';

void main() {
  List<int> A = List.generate(15, (_) => Random().nextInt(50));
  List<int> B = [];

  for (int i = 0; i < A.length; i++) {
    int dobro = A[i] * 2;
    B.add(dobro);
  }
  print(A);
  print(B);
}