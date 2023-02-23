import 'dart:math';

void main() {
  List<int> A = List.generate(5, (_) => Random().nextInt(50));
  List<int> B = [];

  for (int i = 0; i < A.length; i++) {
    B.add(A[i]);
  }
  print(A);
  print(B);
}