class Dog {
  final int id;
  final String name;
  final int age;

  Dog({this.id, this.name, this.age});

  factory Dog.fromMap(Map<String, dynamic> map) {
    return new Dog(
      id: map['id'] as int,
      name: map['name'] as String,
      age: map['age'] as int,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'name': this.name,
      'age': this.age,
    } as Map<String, dynamic>;
  }
}
