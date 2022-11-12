// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:aplicacao1/Models/poke.dart';
import 'package:aplicacao1/repositories/pokerepository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:aplicacao1/main.dart';

void main() {
  final PokeRepository repo = PokeRepository();
  test('Receber requisisão', () async {
    Pokemon poke = await repo.pegarPokemon('ditto');
    expect(poke.name, "ditto");
    expect(poke.sprite,
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png");
    print(poke.sprite);
    print(poke.name);
  });
}
