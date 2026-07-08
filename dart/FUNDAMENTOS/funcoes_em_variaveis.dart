void main() {
  // int Function(int, int) soma = somaFn;
  // int Function(int, int) soma = (int a, int b){return a + b;}; // Função anonima
  // var soma = (int a, int b) {
  //   return a + b;
  // };

  var soma = (int a, int b) => a + b;

  print(soma(5, 3));
}

// int somaFn(int a, int b){
//   return a + b;
// }