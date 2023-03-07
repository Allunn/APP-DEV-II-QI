void main() {
  String venue = "QI Assis Brasil";
  print(
      "Local: $venue     Data: ${DateTime(2023, 3, 21, 14)}\n\nLISTA DE CONVIDADOS");
  //DateTime(Ano, Mes, Dia, Hora)
  List<Guest> guests = [];

//Add and Remove
  guests.add(Guest("Maria", "123"));
  guests.add(Guest("João", "456"));
  guests.add(Guest("Hamilton", "789"));
  guests.remove(Guest("João", "456"));
//Add and Remove

  guests.forEach((Guest guests) =>
      print("Nome: ${guests.name}\nContato: ${guests.phone}\n"));

  print("Você tem ${guests.length} convidados confirmados.");
}

class Guest {
  String name = '';
  String phone = '';

  Guest(this.name, this.phone);
}
