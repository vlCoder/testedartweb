import 'package:hasura_connect/hasura_connect.dart';

class GraphqlConnect {
  HasuraConnect hasuraConnect;

  GraphqlConnect() {
    hasuraConnect = HasuraConnect('https://graphql-pokemon.now.sh/');
  }

  Future<dynamic> mutation(String doc,
      {Map<String, dynamic> variables, bool tryAgain = true}) async {
    return hasuraConnect.mutation(doc,
        variables: variables, tryAgain: tryAgain);
  }

  Future<dynamic> query(String doc, {Map<String, dynamic> variables}) async {
    return hasuraConnect.query(doc, variables: variables);
  }
}
