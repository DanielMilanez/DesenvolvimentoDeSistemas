""" 
    Com base na aula desenvolver uma melhoria
"""

class Aluno:
    """
        - *Representa um aluno com nome, idade e matrícula.*
        - **Método aniversario**: permite com que você modifique a idade do aluno com o passar dos anos (padrão 1)
        - **Método Status**: retorna uma *string* formatada informando todos os parametros do aluno. 
    """
    # Fazendo dessa forma consigo adicionar um novo estado ao objeto 
    # na hora da instanciação dele! WoW
    def __init__(self, nome, idade, turma, matricula):
        self.nome = nome
        self.idade = idade
        self.turma = turma
        self.matricula = matricula

    def aniversario(self, anos=1):
        self.idade += anos

    def status(self):
        return f"{self.nome} tem {self.idade} anos de idade \nmatricula {self.matricula}\nturma {self.turma}"

new_aluno = Aluno("Daniel", 14, 283123, "7B")
new_aluno.aniversario(3)

print(new_aluno.status())
