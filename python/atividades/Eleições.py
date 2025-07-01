from random import randint
from os import system
from time import sleep 

qnt = 0
count = 0
winner = "ngm"
fim = 0

pessoa = {
    'candidatos': [],
    'votos':[0] * 1000
}

def winner():
    maior = 0
    indice = 0
    for i in range(0, qnt):
        
        if maior <= pessoa['votos'][i]: 
            maior = pessoa['votos'][i]
            indice = i
        
    print(f"Candidato ganhador: {pessoa['candidatos'][indice]}")
    print("--------------------------------")

def cadastrar_pessoa():
    global count
    global pessoa

    for i in range(0, qnt):
        pessoa_atual = count
        pessoas = input(f"Informe o nome do {pessoa_atual + 1}° candidato: ")
        pessoa['candidatos'].append(pessoas)
        count += 1
    
    count = 0

def votar():
    print("===================================")
    print("Candidatos: ")
    for i in range(0, qnt):
        print(f"{i} - {pessoa['candidatos'][i]}")
    
    print("===================================")
    print()
    print("Digite -1 para finalizar")
    
    index = int(input("Informe o código do candidato que você irá votar: "))
    
    if index < 0: return -1 
    else: pessoa['votos'][index] = pessoa['votos'][index] + 1
    
    return 0

qnt = int(input("Informe quantas pessoas irão concorrer: "))
cadastrar_pessoa()

i = 0

while(True): 
    counter = i + 1
    system("cls")
    print(f"{counter}° Eleitor informe sua escolha")
    fim = votar()
    
    if (fim == 0):
        system("cls")
        print("===================================")
        print(f"{counter}° Eleitor seu voto foi salvo com sucesso! ")
        print("===================================")
        i += 1
        
        sleep(2)
    else: break
    
system("cls")
print("===================================")
print("        FIM DAS ELEIÇÕES!")
print("===================================")

winner()

resultado = list(zip(pessoa['candidatos'], pessoa['votos'][:qnt]))
resultado.sort(key=lambda x: x[1], reverse=True)

for candidato, votos in resultado:
    print(f"Candidato: {candidato} - Votos: {votos}")