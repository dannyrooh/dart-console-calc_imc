class Pessoa {

  String nome;
  double peso;
  double altura;

  Pessoa({
    required this.nome,
    required this.peso,
    required this.altura,
  }) {
    if (peso <= 0) {
      throw ArgumentError('Peso deve ser maior que zero.');
    }
    if (altura <= 0) {
      throw ArgumentError('Altura deve ser maior que zero.');
    }
  }

}