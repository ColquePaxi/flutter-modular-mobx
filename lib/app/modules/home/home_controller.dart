import 'package:mobx/mobx.dart';
import 'models/pokemon_model.dart';
import 'repositories/poke_repository.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  //String text = '';
  final PokeRepository repository;

  @observable 
  ObservableFuture<List<PokemonModel>> pokemons;

  _HomeControllerBase(this.repository) {
    //pokemons = repository.getAllPokemons().asObservable();
    fetchPokemons();
  }

  // Depois de criar o construtor, vai no AppModule e criar a injeção de dependência

  // Para implementar um RELOAD na view, caso dê erro na consulta da API

  @action 
  fetchPokemons() {
    pokemons = repository.getAllPokemons().asObservable();
  }

}