from rich import print
from rich.table import Table

table = Table(title = "Tabela de preços")

table.add_column("Nome")
table.add_column("Preço")

table.add_row("Lapis", "R$1,50")
table.add_row("Cola", "R$4,99")
print(table)
