import 'dart:io';

void main(List<String> args) {
  /*
    Devo imprimir sem usar numeros apenas palavras
    #
    ##
    ###
    ####
    #####
    ######
   */
  String? input;

  if (args.isEmpty){
    do{
      stdout.write("Digite quantas linhas você deseja (por extenso): ");
      input = stdin.readLineSync() ?? "";

      if(input.isEmpty) print("Digite uma quantidade. Por extenso");
    } while (input.isEmpty);
  } else input = args[0];
  
  int filter; 

  switch(input){
    case "um": filter = 1; break;
    case "dois": filter = 2; break;
    case "três": filter = 3; break;
    case "quatro": filter = 4; break;
    case "cinco": filter = 5; break;
    case "seis": filter = 6; break;
    default: filter = 0;
  }

  for(int i = 0; i < filter; ++i){
    print("#" * (i + 1));
  }

  /*===================== RESPOSTA =================== */
  for(var valor = "#"; valor != "######"; valor += "#"){
    print(valor);
  } 
}
