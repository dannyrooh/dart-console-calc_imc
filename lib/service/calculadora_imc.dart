class CalculadoraIMC {

  double _calc(double peso, double altura) => peso / (altura * altura);

  String _getCategoria(double imc) {
    if (imc < 16) {
      return "Magreza grave";
    } else if (imc >= 16 && imc < 17) {
      return "Magreza moderada";
    } else if (imc >= 17 && imc < 18.5) {
      return "Magreza leve";
    } else if (imc >= 18.5 && imc < 25) {
      return "Saudável";
    } else if (imc >= 25 && imc < 30) {
      return "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      return "Obesidade Grau 1";
    } else if (imc >= 35 && imc < 40) {
      return "Obesidade Grau II (severa)";
    } else {
      return "Obesidade Grau III (mórbida)";
    }
  }

  static Map<String, String> execute(double peso, double altura) {

    if (peso <= 0 || altura <= 0 || peso == double.infinity || altura == double.infinity) {
      throw ArgumentError('Peso e altura devem ser maiores que zero.');
    }
    
    var obj = CalculadoraIMC();

    var imc = obj._calc(peso,altura);

    var categoria =  obj._getCategoria(imc);

    return { "imc" :  imc.toStringAsFixed(2), "categoria" :  categoria  };
  }
  

}