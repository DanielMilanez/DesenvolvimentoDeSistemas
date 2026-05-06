"""
    Desafio 003: Crie a classe Churrasco, onde seja possível informar 
    quantas pessoas vão participar e mostre quanto de carne deve ser comprado
    o custo total do churrasco e o preço por pessoa.

    ---------------
    | Churasco     |
    ---------------
    +titulo
    +qtd_pessoa
    ---------------
    +analisar()

    Considere 400g por pessoa
    Preço:R$82.40/Kg

"""

from rich import print
from rich.panel import Panel

class Churasco:
    def __init__(self, titulo = "Nulo", qtd = 0):
        self.titulo = titulo
        self.quantidade = qtd
    
    def analisar(self):
        kg_total = self.quantidade * 0.4
        custo_total = kg_total * 82.40

        # Mensagens
        msg1 = f"Analisando [green]{self.titulo}[/] com [blue]{self.quantidade}[/] convidados\n"
        msg2 = "Capa participante comerá 0.4Kg e cada Kg custa R$82.40\n"
        msg3 = f"Recomendo [blue]{(self.quantidade * 0.4):.3f}Kg[/] de carne\n"
        msg4 = f"O custo total será de [green]R${custo_total:.2f}[/]\n"
        msg5 = f"Cada pessoa pagará [yellow]R${(custo_total / self.quantidade):.2f}[/] para participar."
        full_msg = msg1 + msg2 + msg3 + msg4 + msg5

        box = Panel(full_msg, title = self.titulo, width=60)
        print(box)

c1 = Churasco("Churras dos Amigos", 100)
c1.analisar()
