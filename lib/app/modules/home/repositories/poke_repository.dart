import 'package:dio/dio.dart';
import 'package:slidy_aula_2/app/modules/home/models/pokemon_model.dart';

class PokeRepository {
  final Dio dio;
  PokeRepository(this.dio);

  Future<List<PokemonModel>> getAllPokemons() async {
    var response = await dio.get('/pokemon');
    // Se não inicializar essa lista, dá erro na view
    //List<PokemonModel> pokemonList;
    List<PokemonModel> list = [];
    for (var json in (response.data['results']) as List) {
      PokemonModel model = PokemonModel(
        name: json['name'],
      );
      list.add(model);
    }
    return list;
  }

}