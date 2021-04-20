class Queries {
  static final String pokemon = """
    query pokemon(\$id: String, \$name: String) {
      pokemon(id:\$id, name:\$name){
      name
      number
      fleeRate
      maxCP
      maxHP
    }
  }
  """;
}
