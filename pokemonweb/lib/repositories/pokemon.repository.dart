import 'package:pokemonweb/graphql.connect.dart';
import 'package:pokemonweb/graphql/queries.dart';
import 'package:pokemonweb/models/pokemon.model.dart';

class PokemonRepository {
  Future<PokemonModel> pokemonOnly(String id, String name) async {
    GraphqlConnect graphql = GraphqlConnect();
    Map<String, dynamic> json = await graphql
        .query(Queries.pokemon, variables: {"id": id, "name": name});

    var pokemon = json['data']['pokemon'];

    return PokemonModel.fromJson(pokemon);
  }
}
