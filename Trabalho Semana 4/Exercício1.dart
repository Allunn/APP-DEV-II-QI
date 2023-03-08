void main() {
//Trabalho por Paula Borges Mendes (Allunn) e Bruna Borges Lindner, turma 48 Assis Tarde

  //Atividade 1
  print('Atividade 1');

  String clothes = "Camiseta Polo";
  double price = 100.00;
  int quantity = 80;
  double finalPrice;

  if (quantity > 50) {
    finalPrice = (price * 0.75) * quantity;
  } else if (quantity > 20 && quantity <= 50) {
    finalPrice = (price * 0.80) * quantity;
  } else if (quantity > 10 && quantity <= 20) {
    finalPrice = (price * 0.90) * quantity;
  } else {
    finalPrice = price * quantity;
  }

  print(
      "Sua compra consiste em $quantity $clothes(s). O total da sua compra é\$${finalPrice.toStringAsFixed(2)}.");
}
