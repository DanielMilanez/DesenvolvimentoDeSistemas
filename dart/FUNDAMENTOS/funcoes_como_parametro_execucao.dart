
void executaPor(int qtd, Function(String) fn, String valor){
  for(int i = 0; i < qtd; ++i){
    fn(valor);
  }
}

void main(){
  executaPor(10, print, "muito legal");
}