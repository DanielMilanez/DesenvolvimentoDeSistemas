"""
    Exercicio: Desenvolver um programa de conta bancaria para um usuário
    neste programa o usuário deverá conseguir depositar e sacar dinheiro de sua conta

    Proposta:
     _________________________
    |			              |
    |      OpenAccount	      |
    |_________________________|
    | + account		          |
    | + holder		          |
    | + balance 		      |
    |_________________________|
    | + deposit()		      |
    | + withdraw()		      |
    |_________________________|

"""

class OpenAccount:
    """
        Represents a bank account with balance management operations.

        Can deposit and withdraw monetary values.
        >>> deposit(self, amount)     > *Adds* money to the account balance.
        >>> withdraw(self, amount)    > *Removes* money from the account balance.
    """
    def __init__(self, account, holder, balance = 0):
        self.account = account
        self.holder = holder
        self.balance = balance
    
    def deposit(self, amount):
        self.balance += amount if amount > 0 else print("Valor de deposito inválido!")

    def withdraw(self, amount):
        if(self.balance >= amount): self.balance -= amount
        else: print("Saldo insuficiente para realizar a operação!")

    def __str__(self):
        return f"State: \n Holder: {self.holder}\n Account Number: {self.account}\n Balance: R${self.balance:,.2f}"
    
newAccount = OpenAccount(65874, "Daniel", 2_000_000)
print(newAccount)

newAccount.deposit(330)
print(newAccount)

newAccount.withdraw(2_000_000)
print(newAccount)
