//Now let's create the article model
// for that we just need to copy the property from the json structure
// and make a dart object

class Article {
  String nome;
  String especie;
  String sexo;
  String contato;
  String local;
  String idade;
  String img;

  //Now let's create the constructor
  Article({
    this.nome,
    this.especie,
    this.sexo,
    this.contato,
    this.local,
    this.idade,
    this.img,
  });

  //And now let's create the function that will map the json into a list
  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      nome: json['nome'] as String,
      especie: json['especie'] as String,
      sexo: json['sexo'] as String,
      contato: json['contato'] as String,
      local: json['local'] as String,
      idade: json['idade'] as String,
      img: json['img'] as String,
    );
  }
}
