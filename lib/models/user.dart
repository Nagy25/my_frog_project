class User {
  User({this.name});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
  }
  String? name;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}
