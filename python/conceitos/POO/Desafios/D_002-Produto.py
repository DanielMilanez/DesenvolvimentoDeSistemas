"""
    Desafio 002: Crie a classe Produto. Onde podemos cadastrar nome e o preço.
    Crie também um étodo que mostre uma etiqueta de preço do produto!

    ---------------
    | Produto     |
    ---------------
    +nome
    +preco
    ---------------
    +etiqueta()
"""

from rich import print
from rich.panel import Panel
from rich.text import Text


class Produto:
    def __init__(self, nome="none", preco=0):
        self.nome = nome
        self.preco = preco

    def etiqueta(self):
        text = Text(f"{self.nome}\n\n{'-'*45}\n\n{'.'*17}R${self.preco:,.2f}{'.'*17}", justify="center")

        box = Panel(text, title="Produto", width=50)
        print(box)


p1 = Produto("Iphone 17 Pro Max", 25_000.85)


p1.etiqueta()