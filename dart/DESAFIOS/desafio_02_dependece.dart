/// Representa um carro com controle de velocidade.
///
/// A classe permite acelerar e desacelerar o veículo,
/// respeitando um limite de velocidade e uma velocidade máxima.
class Carro{
  int spd     = 0;
  int limit   = 0;
  int max_spd = 0;
 
  Carro([this.spd = 0, this.limit = 60, this.max_spd = 30]);

  int atualSpeed() => spd;
  bool outOfLimit() => spd >= max_spd;
    
  String acc(int value){
    if(spd < max_spd){
      if (spd + value >= limit){
        spd = limit;
        return "${limit}Km/h - Já está na potência máxima";
      }
      else{
        spd += value;
      }
    }
    else {
      return "${max_spd}Km/h - Já está na velocidade máxima";
    } 

    return (spd).toString();
  } 
  String dess(int value){
    if(spd > 0){
      spd -= value;
    }
    else {
      return "Já está parado!";
    } 

    return (spd).toString();
  }  
}
