import 'Teste1.dart';
import 'Teste2.dart';

void main() {
  Event event = Event(DateTime.now(), "Assis Brasil");

  event.addGuest(
    Guest(name: "Anderson", phone: ""),
  );
  event.addGuest(
    Guest(name: "Maria", phone: ""),
  );

  event.listOfGuests().forEach((element) {
    print(element.name);
  });
}
