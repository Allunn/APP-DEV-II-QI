void main() {
  //Entrada

  var nome = 'Nome';
  var idade = 9;
  var acompanhante = true;
  var acompanhanteNome = 'NomeAA';

  bool maioridade = idade >= 18;

  if (maioridade == true) {
    print('Seja bem-vindo ao nosso show, $nome');
  } else {
    if (acompanhante == true) {
      print('Sejam bem-vindos ao nosso show $nome e $acompanhanteNome');
    } else {
      print('Desculpe, $nome, você não tem idade para entrar');
    }
  }
}
