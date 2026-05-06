"""
    Desafio 005: Crie a classe Gamer, onde podemos cadastrar nome, nick e os jogos favoritos de uma 
    pessoa. Crie também um étodo que permita mostrar a ficha desse gamer.

    Gamer
    --------------
    +nome = str
    +nick = str
    +jogos_favoritos = lista 
    --------------
    +mostrar_ficha()
"""

from rich import print
from rich.panel import Panel

class Gamer:
    def __init__(self, nome, nick, jogos = []):
        self.nome = nome
        self.nick = nick
        self.jogos = jogos
    
    def mostrar_ficha(self, formated_games = []):
        formated_games = "\n".join(f"- [bold cyan]{jogo}[/]" for jogo in self.jogos) if self.jogos else "[white]Sem jogos cadastrados."

        print(
            Panel(
                f"[bold cyan]Nome:[/bold cyan] {self.nome}\n"
                f"[bold green]Nick:[/bold green] {self.nick}\n\n"
                f"[bold yellow]Jogos Favoritos:[/bold yellow]\n{formated_games}",
                title = "Gamer",
                style = "Green",
                width = 50
            )
        )
        print()
    
    def add_new_game(self, game):
       self.jogos.append(game)

player1 = Gamer("Daniel", "GutinhoDelas88")
player1.mostrar_ficha()

player1.add_new_game("The Legend of Zelda: Skyward Sword")
player1.add_new_game("The Legend of Zelda: Ocarina of Time")
player1.add_new_game("The Legend of Zelda: Minish Cap")
player1.mostrar_ficha()
