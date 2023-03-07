import 'Teste1.dart';

class Event {
  DateTime date;
  String venue;
  late List<Guest> guests;

  Event(
    this.date,
    this.venue,
  ) {
    this.guests = [];
  }

  void addGuest(Guest guest) {
    guests.add(guest);
  }

  bool removeGuest(Guest guest) {
    return guests.remove(guest);
  }

  List<Guest> listOfGuests() => this.guests;
}
