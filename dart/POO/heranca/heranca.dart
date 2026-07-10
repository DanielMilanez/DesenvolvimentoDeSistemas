void main(){
  Carro meuCarro = new Carro();
  Onibus meuOnibus = new Onibus();

  print(meuCarro.numerosDeAssentos);
  meuCarro.acc();

  print(meuOnibus.numerosDeAssentos);
  meuOnibus.acc();
}

class Carro{
  int numerosDeAssentos = 5;

  void acc(){
    print("Acelerando");
  }
}

class Onibus extends Carro{
  @override
  int get numerosDeAssentos => 32; 
}