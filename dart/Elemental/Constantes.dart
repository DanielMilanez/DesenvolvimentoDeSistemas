import 'dart:io'; // biblioteca para utilizar input do terminal

// Definindo variável global, que seja constante
final pi = 3.14159265359;
// Posso também utilizar o termo const para representar um valor constante
// A ideia é sempre otimizar variáveis que são imutaveis para constantes
// Para poupar armazenamento / processamento
// Mas isso é apenas valido para variáveis imutaveis

/*
  CONST é usado para definir o valor fixo de uma variável em tempo de compilação
  FINAL é usado para definir um valor constante em tempo de execução
*/

void main(List<String> args) {
  double? raio; // Pode armazenar um double ou null o prefixo ? mostra ao compilador que ele pode retornar nulo

  if (args.isNotEmpty) { // Verifica se foi informado um argumento pela linha de comando
    raio = double.tryParse(args[0]); // Tenta converter o argumento para double. Se não conseguir, retorna null.
  }

  if (raio == null) { // verifica se é nulo
    do {
      stdout.write("Informe o raio: "); // caso seja pede para o usuário inserir o valor do raio
      raio = double.tryParse(stdin.readLineSync() ?? ""); // tenta converter o valor inserido em double
      // Caso não consiga, uma string vazia ("") será passada para tryParse().
      // E o readLineSync() retornar null,

      if (raio == null) {
        print("Valor inválido. Digite um número.");
      }
    } while (raio == null); // Repete enquanto o usuário não informar um número válido.
  }

  // Fim do programa. Exibe a área do círculo com 3 casas decimais.
  print("Área: ${(pi * raio * raio).toStringAsFixed(3)}");
}
