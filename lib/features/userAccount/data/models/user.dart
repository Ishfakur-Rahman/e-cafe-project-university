// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:convert';
import 'dart:html';

class User {
  final String name;
  final PasswordInputElement password;
  final EmailInputElement email;
  User({
    required this.name,
    required this.password,
    required this.email,
  });
  // final Address address;
  // final Contact contact;
  // final Image profilePicture;

  User copyWith({
    String? name,
    PasswordInputElement? password,
    EmailInputElement? email,
  }) {
    return User(
      name: name ?? this.name,
      password: password ?? this.password,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'password': password,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] ?? '',
      password: map['password'],
      email: map['email'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() => 'User(name: $name, password: $password, email: $email)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is User &&
      other.name == name &&
      other.password == password &&
      other.email == email;
  }

  @override
  int get hashCode => name.hashCode ^ password.hashCode ^ email.hashCode;
}
