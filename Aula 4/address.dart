class Address {
  String 
      streetName;
  String?
      streetNumber; // "?" = Potencialmente nulo, se ele pode ser nulo não tem problema.
  String 
      city;

  Address({
    required this.streetName, 
    this.streetNumber,
    required this.city,
  });
}
