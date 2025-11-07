"""
    Este algoritmo permite com que eu descubra a distância euclidiana de um novo parametro a ser adicionado a planilia de dados com 
    base em parametros ja existentes.
"""

table = {
    'sexo':['M', 'F', 'M', 'F', 'M'],
    'trabalho': ['Sim', 'Não', 'Sim', 'Sim', 'Não'],
    'salario': [3000.00, 1500.00, 5000.00, 2500.00, 2000.00]
}

new_data = {
    'sexo': 'M',
    'trabalho': 'Sim',
    'salario': 2800.00
}

min_ = 0
max_ = 0

# Descobrindo minimo e maximo
for i in range(5):
    if i == 0: 
        min_ = table['salario'][i]
        max_ = table['salario'][i]

    if table['salario'][i] < min_: 
        min_ = table['salario'][i]

    if table['salario'][i] > max_: 
        max_ = table['salario'][i]

# Convertendo qualitativos em quantitativos
for i in range(5):
    table['sexo'][i] = 1 if table['sexo'][i] == 'M' else 0
    table['trabalho'][i] = 1 if table['trabalho'][i] == 'Sim' else 0

# Normalização do salário
for i in range(5):
    to_norm = table['salario'][i]
    norm = (to_norm - min_) / (max_ - min_)
    table['salario'][i] = norm

# Normalizando novo cadastro
new_data['salario'] = (new_data['salario'] - min_) / (max_ - min_)
new_data['sexo'] = 1 if new_data['sexo'] == 'M' else 0
new_data['trabalho'] = 1 if new_data['trabalho'] == 'Sim' else 0

# Calculando distância com base nos parametros normalizados
resposta = []

for i in range(5):
    soma = ((new_data['sexo'] - table['sexo'][i]) ** 2) + ((new_data['trabalho'] - table['trabalho'][i]) ** 2) + ((new_data['salario'] - table['salario'][i]) ** 2)
    d = soma ** 0.5
    resposta.append(d)

for i in resposta:
    print(f'{i:.4f}')
