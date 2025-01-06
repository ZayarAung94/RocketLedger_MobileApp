class TestModel {
  int id;
  String name;
  String email;
  String phone;

  TestModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });

  factory TestModel.fromJson(Map<String, dynamic> json) {
    return TestModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
    };
  }
}
