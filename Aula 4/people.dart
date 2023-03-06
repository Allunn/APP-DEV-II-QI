import 'address.dart';

class People {
  String fullName;
  Address address;

  People({
    required this.fullName,
    required this.address,
  });

  String showInfo() {
    return "O Sr(a). $fullName reside no endereço ${address.streetName} n° ${address.streetNumber} - ${address.city}";
  }
}
