void main(List<String> args) {
  var aprovados = ["Daniel", "Carlos", "Miguel"];
  // POsso definir como
  // List aprovados = ["Daniel", "Carlos", "Miguel"];

  print(aprovados[0]);
  print(aprovados.length);

  // Map telefones = new Map; é o JSON ou dicionário do dart 
  var telefone = {
    'João': '135746654',
    'Guto': '654354663'
  };

  print(telefone['João']);
  print(telefone.length);
  
  print(telefone.values);
  print(telefone.keys);

  print(telefone.entries);

  // SET
  var times = {'Vasco', 'Flamengo', 'São Paulo'};
  print(times.length);
  print(times.contains("Vasco"));
  times.add("Atumalaca");
  print(times.length);
  print(times.first);
  print(times.last);

}