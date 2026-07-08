void main(List<String> args) {
  saudar(idade: 62, nome: "maria");
  ola();
}

// Faço com que os parametros sejam obrigatórios
saudar({required String nome,required int idade}){
  print("Hello $nome you are $idade years old");
}

// Posso assumir que os parametros podem ser nulos 
saudar2({String? nome, int? idade}){
  print("Hello $nome you are $idade years old");
}

// variável com parametro opicional
ola([String hello = "Hello"]){
  print(hello);
}