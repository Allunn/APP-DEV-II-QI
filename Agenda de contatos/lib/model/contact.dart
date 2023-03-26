class Contact {
  int? id;
  String name;
  String lastName;
  String photoPath;
  String phone;
  String email;
  bool isFavorite;

  Contact({
    this.id,
    required this.name,
    required this.lastName,
    required this.photoPath,
    required this.phone,
    required this.email,
    this.isFavorite = false,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "lastName": lastName,
      "photoPath": photoPath,
      "phone": phone,
      "email": email,
      "isFavorite": (isFavorite) ? 1 : 0
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      id: map["id"] as int,
      name: map["name"] as String,
      lastName: map["lastName"] as String,
      photoPath: map["photoPath"] as String,
      phone: map["phone"] as String,
      email: map["email"] as String,
      isFavorite: map["isFavorite"] == 1,
    );
  }
}
