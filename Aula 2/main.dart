void main() {
  /* 
    Regras do aumento.
    1° Tempo de empresa maior que 5 anos E salário menor que 1500;
    2° Tempo de empresa maior que 3 anos E salário menor que 1000;
    3° Tempo de empresa maior que 1 anos E salário menor que 800
    */

  double salario = 1400;
  int tEmpresa = 1;
  double aumento = 1.15; //0.15 + 1 (100%) -> 115%

  if ((tEmpresa > 5 && salario < 1500) ||
      (tEmpresa > 3 && salario < 1000) ||
      (tEmpresa > 1 && salario < 800)) {
    salario *= aumento;
    print('O novo salário é R\$ ${salario.toStringAsFixed(2)}');
  } else
    print('Seu aumento não foi aprovado.');
}
