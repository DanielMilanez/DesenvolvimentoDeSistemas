"""
    Desafio 001: Crie uma classe funcionario, onde podemos cadastrar nome, setor e cargo.
    Crie também um método que permita ao funcionário se apresentar.
    ---------------
    | Funcionario |
    ---------------
    +nome
    +setor
    +cargo
    ---------------
    +apresentacao()
"""

from rich import print
from rich.panel import Panel

class Funcionario:
    def __init__(self, nome, setor, cargo):
        self.nome = nome
        self.setor = setor
        self.cargo = cargo
    
    def apresentacao(self):
        return Panel(f"[white]Olá! meu nome é [bold green on black]{self.nome}[/] e sou [bold green on black]{self.cargo}[/] no setor de {self.setor}! Muito prazer :hand_with_fingers_splayed:", style="green", width=55)

f1 = Funcionario("Daniel", "Qualidade", "Inspetor de Qualidade")
print(f1.apresentacao())

f2 = Funcionario("Pedro", "TI", "Programador Full-Stack")
print(f2.apresentacao())
