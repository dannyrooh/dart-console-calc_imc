import 'package:calc_imc_dart/service/calculadora_imc.dart';
import 'package:test/test.dart';

void main() {

  const double altura = 1.70;
  const String magrezaGrave = "Magreza grave";
  const String magrezaModerada = "Magreza moderada";
  const String magrezaLeve = "Magreza leve";
  const String saudavel = "Saudável";
  const String sobrepreso = "Sobrepeso";
  const String obesidadeGrau1 = "Obesidade Grau 1";
  const String obesidadeGrau2 = "Obesidade Grau II (severa)";
  const String obesidadeGrau3 = "Obesidade Grau III (mórbida)";

  var calcImc = CalculadoraIMC.execute;

  void testeImc(Map imc, double rangeInicial, double rangeFinal, String mensagem) {

    // Verificar se o IMC está correto
    double imcCalculado = double.parse(imc["imc"]);

    expect(imcCalculado, greaterThanOrEqualTo(rangeInicial)); 
    expect(imcCalculado, lessThan(rangeFinal)); 
    expect(imc["categoria"], equals(mensagem));

  }


 group('Testando a geração correta cálculo do IMC', () {

    test(magrezaGrave, () {
      double peso = 46;
      double rangeInicial = 0; 
      double rangeFinal = 16;
      
      testeImc(calcImc(peso, altura),rangeInicial,rangeFinal,magrezaGrave);
    
    });

    test(magrezaModerada, () {
      double peso = 47;
      double rangeInicial = 16; 
      double rangeFinal = 17;
 
      testeImc(calcImc(peso, altura),rangeInicial,rangeFinal,magrezaModerada);
    
    });

    test(magrezaLeve, () {
      double peso = 50;
      double rangeInicial = 17; 
      double rangeFinal = 18.5;

      testeImc(calcImc(peso, altura),rangeInicial,rangeFinal,magrezaLeve);
    
    });

    
    test(saudavel, () {
      double peso = 72;
      double rangeInicial = 18.5; 
      double rangeFinal = 25;

      testeImc(calcImc(peso, altura),rangeInicial,rangeFinal,saudavel);
    
    });

    test(sobrepreso, () {
      double peso = 80;
      double rangeInicial = 25; 
      double rangeFinal = 30;

      testeImc(calcImc(peso, altura),rangeInicial,rangeFinal,sobrepreso);
    
    });

    test(obesidadeGrau1, () {
      double peso = 87;
      double rangeInicial = 30; 
      double rangeFinal = 35;

      testeImc(calcImc(peso, altura),rangeInicial,rangeFinal,obesidadeGrau1);
    
    });


    test(obesidadeGrau2, () {
      double peso = 110;
      double rangeInicial = 35; 
      double rangeFinal = 40;

      testeImc(calcImc(peso, altura),rangeInicial,rangeFinal,obesidadeGrau2);
    
    });

    test(obesidadeGrau3, () {
      double peso = 140;
      double rangeInicial = 40; 
      double rangeFinal = 999;

      testeImc(calcImc(peso, altura),rangeInicial,rangeFinal,obesidadeGrau3);
    
    });
  });    

 group('Testando a geração de exception do cálculo do IMC', () {
    test('Deve lançar exceção quando o peso for menor ou igual a zero', () {
      expect(() => calcImc(0, 1.75), throwsArgumentError);
      expect(() => calcImc(-1, 1.75), throwsArgumentError);
      expect(() => calcImc(70, 0), throwsArgumentError);
      expect(() => calcImc(70, -1), throwsArgumentError);
    });

    test('Deve lançar exceção quando o peso ou altura forem nulos', () {
      expect(() => calcImc(double.infinity, 1.75), throwsArgumentError);
      expect(() => calcImc(70, double.infinity), throwsArgumentError);
    });

  });
  


  
}
