/*
  DESENVOLVER UMA CLASSE CARRO
  
     classe CARRO
  + VELOCIDADEMAXIMA
  + VELOCIDADE ATUAL
  ------------------
  + int ACELERAR()
  + int FREIAR()
  + bool LIMITE()
*/

import 'desafio_02_dependece.dart';

void main(List<String> args) {
  var carroVermelho = Carro(0, 300, 330);

  print(carroVermelho.acc(10));
  print(carroVermelho.acc(20));
  print(carroVermelho.acc(30));
  print(carroVermelho.acc(40));
  for(int i = 0; i < 20; ++i) print(carroVermelho.acc(40));
}