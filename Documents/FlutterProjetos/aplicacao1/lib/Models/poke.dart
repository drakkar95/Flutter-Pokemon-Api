import 'dart:convert';

class Pokemon {
  final String name;
  final String sprite;
  final String? ptype;
  final String? stype;
  Pokemon(
      {required this.name,
      required this.sprite,
      required this.ptype,
      this.stype});

  Map<String, dynamic> toMap() {
    return {'name': name, 'sprite': sprite, 'ptype': ptype, 'stype': stype};
  }

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
        name: map['name'] ?? '',
        sprite: map['sprites']['front_default'] ?? '',
        ptype: map['types'][0]['type']['name'] ?? '',
        stype: map['types'][1]['type']['name'] ?? '');
  }

  String toJson() => json.encode(toMap());

  factory Pokemon.fromJson(String source) =>
      Pokemon.fromMap(json.decode(source));
}
