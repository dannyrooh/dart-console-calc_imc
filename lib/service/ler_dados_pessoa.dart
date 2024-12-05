import 'dart:io';

import 'package:calc_imc_dart/entity/pessoa.dart';


Pessoa? lerDadosPessoa() {
  // Ler o nome da pessoa
  stdout.write('Digite o nome da pessoa: ');
  String nome = stdin.readLineSync() ?? '';

  if (nome.trim().isEmpty) nome = "John Doe";

  // Ler o peso da pessoa
  double peso = 0;
  while (true) {
    stdout.write('Digite o peso da pessoa (em kg): ');
    String? pesoInput = stdin.readLineSync();
    if (pesoInput != null && double.tryParse(pesoInput) != null && double.parse(pesoInput) > 0) {
      peso = double.parse(pesoInput);
      break;
    } else {
      print('Peso inválido. Por favor, insira um peso maior que zero.');
    }
  }

  // Ler a altura da pessoa
  double altura = 0;
  while (true) {
    stdout.write('Digite a altura da pessoa (em metros): ');
    String? alturaInput = stdin.readLineSync();
    if (alturaInput != null && double.tryParse(alturaInput) != null && double.parse(alturaInput) > 0) {
      altura = double.parse(alturaInput);
      break;
    } else {
      print('Altura inválida. Por favor, insira uma altura maior que zero.');
    }
  }


 // Criar objeto Pessoa
  try {
    Pessoa pessoa = Pessoa(nome: nome, peso: peso, altura: altura);
    return pessoa;
  } catch (e) {
    print('Erro: ${e}');
    return null;
  }

}