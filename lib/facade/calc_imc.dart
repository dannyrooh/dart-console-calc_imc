import 'package:calc_imc_dart/entity/pessoa.dart';
import 'package:calc_imc_dart/service/calculadora_imc.dart';
import 'package:calc_imc_dart/service/ler_dados_pessoa.dart';

class ImcFacade {

  static void execute() {
    Pessoa? pessoa = lerDadosPessoa();

    if(pessoa == null) return;

    var imc = CalculadoraIMC.execute(pessoa.peso, pessoa.altura);

    print("${pessoa.nome} seu IMC é ${imc["imc"]} - ${imc["categoria"]} ");

  }
}