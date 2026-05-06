"""
    Desafio 004: Crie a classe livro. Que vai simular a passagem
    de páginas de um livro. Consideranto também se o usuário chegou
    ao fim da leitura.

    ---------------
    | Livro       |
    ---------------
    +nome_livro
    +quantidade_paginas
    +pagina_atual = 1
    ---------------
    +proxima_pagina()

"""
from rich import print
from rich.panel import Panel
from time import sleep

class Livro():  
    def __init__(self, nome_livro, qtd_pag, pag_atual = 1):
        self.nome = nome_livro
        self.qtd_pag = qtd_pag
        self.pag_atual = pag_atual
        self._old_pag_atual = 1

        print(f"[blue]Você acabou de abrir o livro '[red]{self.nome}" \
        f"[blue]' que tem [green]{self.qtd_pag} páginas[blue] no total. " \
        f"[blue]Você está agora na [yellow]{self.pag_atual}° pagina [/]\n")

    def proxima_pagina(self, qtd = 1):
        if (self.qtd_pag == self.pag_atual):
            print("Você ja finalizou o livro! [red]Não há mais páginas[/] para avançar")
        else:
            over = qtd - (self.qtd_pag - self.pag_atual)
            self.pag_atual += qtd - over if over > 0 else qtd

            for i in range(self._old_pag_atual, self.pag_atual + 1):
                print(f"PAG {i} >", end=' ')
                sleep(0.3)

            print(f"[blue]Você avançou {qtd - over if (over > 0) else qtd} páginas e agora você está na [yellow]página {self.pag_atual}[blue].[/]")
            self._old_pag_atual = self.pag_atual
            
            if (self.qtd_pag == self.pag_atual):
                print(f":stop_sign: [red]Você chegou ao final do livro '{self.nome}':stop_sign:")

book = Livro("O problema dos 3 corpos", 20)

book.proxima_pagina(5)
book.proxima_pagina(10)
book.proxima_pagina(100)
book.proxima_pagina(100)
