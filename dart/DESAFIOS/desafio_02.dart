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
  var carroVermelho = Carro(5, 330);

  do{
    print(carroVermelho.acc(5));
  } while(!carroVermelho.outOfLimit());

  do{
    print(carroVermelho.dess(5));
  } while(!carroVermelho.outOfLimit());

  carroVermelho.dess(5);

  carroVermelho.velocidadeAtual = 20;
  print(carroVermelho);
}