main(){
  var alunos = [
    {'nome': 'Daniel',  'nota': 9.9},
    {'nome': 'Pedro',   'nota': 9.3},
    {'nome': 'Roberto', 'nota': 8.7},
    {'nome': 'Jackson', 'nota': 8.1},
    {'nome': 'Waggner', 'nota': 7.6},
    {'nome': 'Ricardo', 'nota': 6.8},
  ];

  var notasFinais = alunos
              .map((aluno) => aluno['nota'])
              .map((nota) => (nota as double))
              .where((nota) => nota >= 8);

  var total = notasFinais.reduce((t, a) => t + a);

  print("O valor da média é: ${(total / alunos.length).toStringAsFixed(3)}");
}

