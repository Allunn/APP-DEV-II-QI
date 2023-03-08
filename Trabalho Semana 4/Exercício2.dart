void main() {
  //Trabalho por Paula Borges Mendes (Allunn) e Bruna Borges Lindner, turma 48 Assis Tarde

  //Atividade 2
  print('Atividade 2');
  double firstGrade = 5;
  double secondGrade = 7;
  double thirdGrade = 2;
  double calculateAverage = (firstGrade + secondGrade + thirdGrade) / 3;

  if (calculateAverage > 6) {
    print("Aluno(a) Aprovado(a).");
  } else if (calculateAverage < 4) {
    print("Aluno(a) Reprovado(a).");
  } else {
    print("Aluno(a) em Exame.");
  }
}
