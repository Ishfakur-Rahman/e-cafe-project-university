import 'dart:convert';

class Settings {
  String name;
  String age;
  Settings({
    required this.name,
    required this.age,
  });

  Settings copyWith({
    String? name,
    String? age,
  }) {
    return Settings(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
    };
  }

  factory Settings.fromMap(Map<String, dynamic> map) {
    return Settings(
      name: map['name'] ?? '',
      age: map['age'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Settings.fromJson(String source) => Settings.fromMap(json.decode(source));

  @override
  String toString() => 'Settings(name: $name, age: $age)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Settings &&
      other.name == name &&
      other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
