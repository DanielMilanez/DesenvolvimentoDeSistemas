class Data{
  int dia = 1;
  int mes = 1;
  int ano = 1970;

  // Alterando construtor padrão
  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);

  // Construtor nomeado.
  Data.construct({this.dia = 1, this.mes = 1, this.ano = 1970});
  // Data (int dia, int mes, int ano){
  //   this.dia = dia;
  //   this.mes = mes;
  //   this.ano = ano;
  // }
  Data.ultimoDiaDoAno(this.ano){
    dia = 31;
    mes = 12;
  }

  String getDate(){
    String zerosD = "";
    String zerosM = "";
    String zerosA = "";

    if(dia < 10) zerosD = "0";
    if(mes < 10) zerosM = "0";
    if(ano < 10) zerosA = "0";

    return "$zerosD$dia/$zerosM$mes/$zerosA$ano";
  }

  String toString(){
    return getDate();
  }
}

main(){
  // Construtor padrão
  var dataAniversario = new Data.construct();
  dataAniversario.dia = 9;
  dataAniversario.mes = 1;
  dataAniversario.ano = 2005;

  Data dataCompra = new Data(5, 6, 1986);
  // dataCompra.dia  = 23; 
  // dataCompra.mes = 1; 
  // dataCompra.ano  = 2026; 

  // print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");
  // print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}");

  print("A data de nascimento é ${dataAniversario.getDate()}\nA data da compra é ${dataCompra.getDate()}");
  print(Data.construct());
  print(Data.ultimoDiaDoAno(2026));
}
