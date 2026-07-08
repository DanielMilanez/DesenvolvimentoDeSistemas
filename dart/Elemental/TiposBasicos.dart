/*
  - Num
  - int: Herda caracteristicas de num
  - double: Herda caracteristicas de num
  - String
  - Bool
*/

void main(List <String> args){
  int n1 = 2;
  double n2 = (-5.63).abs(); // valor absoluto
  double n3 = double.parse("12.765");

  print((n1.abs() + n2 + n3).toStringAsFixed(3));
  return;
}
