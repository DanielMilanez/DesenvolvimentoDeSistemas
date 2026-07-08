import 'dart:io';

void main(List<String> args) {
  int a = 7;
  int b = 3;
  int result = a + b;

  print(result);
  print(a - b);
  print(a * b);
  print((a / b).toStringAsFixed(3));
  print((a ~/ b)); // Realiza a divisão mas retorna apenas a parte inteira
  print(a % b);

  // Operadores lógicos
  bool c = true;
  bool d = true;

  print(c && d); // E 
  print(c || d); // OR
  print(c ^ d); // XOR
  print(!c);    // NOT

  // Atribuição
  double j = 2;
  j += 3;
  j = j + 3;
  j++; // incremento lê 8 soma 1 
  j--; // decremento le 9 subtrai 1
  ++j; // incremento 9
  --j; // decremento 8

  j -= 3;
  j *= 3;
  j /= 5;
  j %= 2;

  print(j);

  // Relacionais
  print(3 > 2);
  print(3 >= 3);
  print(3 == 3);
  print(3 <= 3);
  print(3 < 1);
  print(3 != 4);

  // Operadores bit a bit
  print(16 << 2); // Left shift mutiplica por 4 (2 * numeroDeBitsDeslocados) = 64
  print(16 >> 2); // Right shift divide por 4 (2 * numeroDeBitsDeslocados)   = 4
  print(3 & 2); // and resulta 011 010 = 010 = 2
  print(3 | 2); // or resulta 011 010 = 011 = 3
  print(3 ^ 2); // XOR retorna 011 010 = 001 = 1  
  print(-1 >>> 1); // Right Shift - Unsigned Desloca e preenche os bits mais significativos com zeros.

  // Operadores ternários
  stdout.write("Está chovendo: (s/n) ");
  bool estaChovendo = stdin.readLineSync() == "s";

  stdout.write("Está frio: (s/n) ");
  bool estaFrio  = stdin.readLineSync() == "s";

  String resultado = estaChovendo || estaFrio ? "Ficar em casa" : "Sair!!";
  print(resultado);
}

