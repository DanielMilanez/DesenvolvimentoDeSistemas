class Carro{
  int _spd     = 0;
  int max__spd = 0;
 
  Carro([this._spd = 0, this.max__spd = 30]);

  int get velocidadeAtual => _spd;
  void set velocidadeAtual(int nw_spd){
    if ((_spd - nw_spd).abs() <= 5) this._spd = nw_spd;
  }

  int atualSpeed() => _spd;
  bool outOfLimit() => (_spd == max__spd) || (_spd <= 0);

  String acc(int value){
    if (_spd + value >= max__spd){
        _spd = max__spd;
        return "${_spd} Km/h - Já está na velocidade máxima";
      } 
    else _spd += value;
    return (_spd).toString();
  } 

  String dess(int value){
    if(_spd - value >= 1) _spd -= value;
    else {
      _spd = 0;
      return "${_spd} Km/h - Já está parado!";
    }
    return (_spd).toString();
  }  

  String toString() => _spd.toString();
}
