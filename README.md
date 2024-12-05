# Desafio do Bootcamp Formação Flutter Specialist -  Criar uma Calculadora de IMC em dart

## Desafio

Criar um calculadora de IMC, onde vamos receber Peso( em quilos) e Altura (em metros).
O cálculo do IMC obdece a seguinte fórmula:

~~~formula
IMC = PESO / ALTURA²
~~~

Conforme o resultado da classificaão print  a mensagem no console:

|IMC|CLASSIFICAÇÃO|
|--|--|
|< 16| Magreza grave|
|16 a < 17| Magreza moderada|
|17 a < 18,5| Magreza leve|
|18,5 a < 25| Saudável|
|25 a < 30| Sobrepeso |
|30 a < 35| Obesidade Grau 1|
|35 a < 40| Obesidade Grau II (severa)|
|> 40| Obesidade Grau III (mórbida)|

## Checklist do Desafio

* Criar classe Pessoa (Nome / Peso / Altura)​

* Ler dados do terminal​

* Tratar exceções​

* Calcular IMC ​

* Printar na tela o resultado do cálculo​

* Testes​

## Criando o projeto no console

~~~shell
> dart create calc_imc_dart
> cd calc_imc_dart
> dart run
~~~
