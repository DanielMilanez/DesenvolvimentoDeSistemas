from django.shortcuts import render

def associados(request):
    return render(request, 'associados/index.html')
def login(request):
    return render(request, template_name = 'associados/login.html')
def cadastro(request):
    return render(request, template_name = 'associados/cadastro.html')
