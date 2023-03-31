class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profilePhoto"],
      phoneNumber: map["phoneNumber"],
    );
  }

  factory User.dummy() {
    return User(
      id: 124,
      name: "Wafa Ghaida Aulia",
      username: "wafagaida",
      email: "2006124@itg.ac.id",
      profilePhoto:
          "https://i.pinimg.com/736x/35/d2/e7/35d2e75539fb0cd3367e236124822362.jpg",
      phoneNumber: "083123123123",
    );
  }
}
