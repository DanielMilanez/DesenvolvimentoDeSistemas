# Declaração da classe
class Pessoa:
    # Consigo adicionar uma documentação no vscode!!!
    """
        Pessoa
        =======================

        Possui *nome* e *idade* como atributos
        --------------------------

        Exemplos de ReStructuredText (reST)

        .. note::

        Isso é uma nota importante.

        .. warning::

        Isso é um aviso.

        Exemplo de tabela

        +-------+--------+
        | Nome  | Idade  |
        +=======+========+
        | Ana   | 20     |
        +-------+--------+
        | João  | 25     |
        +-------+--------+

        .. code-block:: python
            def soma(a, b):
                return a + b

                
        Exemplo de link: `Google <https://www.google.com>`_

        Exemplo imagem
        .. image:: imagem_exemplo.jpg 
    """
    # Sobrescrevendo um metodo interno para manipular meus próprios atributos 
    def __init__(self, nome, idade): # Método construtor
        self.nome = nome
        self.idade = idade
    
    # Métodos de instancia
    def aniversario(self):
        self.idade += 1

    # DUNDER METHOD
    # Sobrescrevendo um metodo interno para retornar o que eu desejo
    def __str__(self): # Por padrão o metodo mostra o endereço na memória
        return f"{self.nome} é um(a) aprendiz e tem {self.idade} anos de idade"
    
    def __getstate__(self):
        return f"Estado: \nnome: {self.nome}\nidade: {self.idade}"
    
p1 = Pessoa("Daniel", 21)
# print(p1.message())

# print(p1.__doc__) # Receber a documentação no docstring inicial
# print(p1.__dict__) # Atributo para obter as informações dos parametros internos no formato de dicionário
print(p1.__getstate__()) # Metodo para obter as informações de parametros internos no formato de dicionário
# ou seja eu consigo sobrescrever o metodo getstate na minha classe, por padrão ele faz a mesma coisa que o __dict__
