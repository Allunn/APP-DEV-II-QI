void main() {
  double firstGrade = 6;
  double secondGrade = 6;
  double thirdGrade = 8;
  double calculateAverage = (firstGrade + secondGrade + thirdGrade) / 3;

  if (calculateAverage > 6) {
    print("Aluno(a) Aprovado(a).");
  } else if (calculateAverage < 4) {
    print("Aluno(a) Reprovado(a).");
  } else {
    print("Aluno(a) em Exame.");
  }
}
