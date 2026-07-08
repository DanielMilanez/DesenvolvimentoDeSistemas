main(){
  var alunos = [
    {'nome': 'Daniel',  'nota': 9.9},
    {'nome': 'Pedro',   'nota': 9.3},
    {'nome': 'Roberto', 'nota': 8.7},
    {'nome': 'Jackson', 'nota': 8.1},
    {'nome': 'Waggner', 'nota': 7.6},
    {'nome': 'Ricardo', 'nota': 6.8},
  ];

  String Function(Map) pegarApenasOnome = (aluno) => aluno['nome']; 
  int Function(String) qtdDeLetras = (texto) => texto.length; 
  int Function(int) dobro = (numero)=> numero * 2;

  var nomes  = alunos
  .map(pegarApenasOnome)
  .map(qtdDeLetras)
  .map(dobro);

  print(nomes);
}
