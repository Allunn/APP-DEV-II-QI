import'dart:io'; //interagir com o usuario
//testar com novo terminal

void main(){//void = sem retorno
  print('\nDigite o número desejado');
  int numero = int.parse(stdin.readLineSync()!);

  if(numero<1 || numero > 10){
    print('Número inválido');
  }else{
    tabuada(numero);
  }

}//final main

void tabuada(int numero) {
  for(int i=1;i<11;i++){//i=indice (inicio; final; de quanto em quanto) i++ = de um em um
  int tabuada = numero * i;
  print('$numero X $i = $tabuada');
  }
}//final tabuada