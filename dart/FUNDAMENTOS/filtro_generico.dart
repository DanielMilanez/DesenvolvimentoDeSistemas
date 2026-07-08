List<T> filter<T>(List<T> lista, bool Function(T) fn) {
  List<T> lfilter = [];

  for (T elemento in lista) {
    if (fn(elemento)) {
      lfilter.add(elemento);
    }
  }

  return lfilter;
}

void main(List<String> args) {
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];
  var gNotas = (double nota) => nota >= 7;

  var notas_finais = filter(notas, gNotas);
  print(notas_finais);
}
