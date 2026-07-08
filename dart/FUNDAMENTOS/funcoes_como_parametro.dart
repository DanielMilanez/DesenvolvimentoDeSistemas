import 'dart:math';

void execute({required Function fnPar, required Function fnImpar}){
  var value = Random().nextInt(10);
  value % 2 == 0 ? fnPar() : fnImpar();
}

void main(List<String> args) {
  var minhaFnPar = () => print("Valor é par");
  var minhaFnImpar = () => print("Valor é impar");

  execute(fnPar: minhaFnPar, fnImpar: minhaFnImpar);
}