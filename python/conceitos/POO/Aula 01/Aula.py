# Declaração da classe
class Pessoa:
    # Consigo adicionar uma documentação no vscode!!!
    """
        Teste de documentação de uma classe
    """
    def __init__(self): # Método construtor
        self.nome = ""
        self.idade = 0
    
    # Métodos de instancia
    def aniversario(self):
        self.idade += 1
    
    def mensage(self):
        return f"{self.nome} é um(a) aprendiz e tem {self.idade} anos de idade"


# Instanciação dos Objetos (chamada do método construtor) def __init__(self):
p1 = Pessoa()
p1.nome = "Daniel"

p1.idade = 21

print(p1.mensage())

p1.aniversario()

print(p1.mensage())

