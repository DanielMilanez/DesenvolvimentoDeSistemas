from rich import print
from rich.panel import Panel

box = Panel("Essa mensagem foi feita para haver uma quebra de linha! :+1:", title="Mensagem", style="green", width=30)
print(box)
