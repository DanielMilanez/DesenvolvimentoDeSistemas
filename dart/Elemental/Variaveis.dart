// Valor literal: 1 2 3, texto, lista, etc.
// tipo nome = valor

void main(List<dynamic> args) {
  int a = 2;
  double b = 3.14159265359;
  var h = args[0];  // Dart atribui um tipo pela inferencia (valor atribuido a variável)

  if(RegExp(r'^\d$').hasMatch(h)){
    h = int.parse(h);
  }

  print("Valor do raio: ${(2 * b * a).toStringAsFixed(2)}\nvariável escrita: ${h}\ntipo da variável: ${h.runtimeType}");
}