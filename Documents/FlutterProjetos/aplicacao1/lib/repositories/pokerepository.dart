import 'dart:io';

import 'package:aplicacao1/Models/poke.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class PokeRepository extends StatefulWidget {
  String url = "hhttps://pokeapi.co/api/v2/pokemon/";
  var dio = Dio();

  PokeRepository({Key? key}) : super(key: key);

  Future<Pokemon> pegarPokemon(
    String name,
  ) async {
    Response response =
        await dio.get('https://pokeapi.co/api/v2/pokemon/${name}/');
    Pokemon poke = await Pokemon.fromMap(response.data);
    return poke;
  }

  @override
  State<PokeRepository> createState() => _PokeRepositoryState();
}

class _PokeRepositoryState extends State<PokeRepository> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
