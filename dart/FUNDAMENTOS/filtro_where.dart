void main(List<String> args) {
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];
  
  bool Function(double) gNotas = (double nota) => nota >= 7;

  var notasBoas = notas.where(gNotas);
  
  print(notas);
  print(notasBoas);
}