void main() {
  String clothes = "Camiseta Polo";
  double price = 150.00;
  int quantity = 5;
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

  print("O total da sua compra é R\$${finalPrice.toStringAsFixed(2)}.");
}
