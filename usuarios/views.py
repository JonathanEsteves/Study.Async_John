from django.shortcuts import render, redirect
from django.http import HttpResponse

def cadastro(request):
    if request.method == "GET":
        return render(request, 'cadastro.html')
    elif request.method == "POST":
        username = request.POST.get('username')
        senha = request.POST.get('senha')
        confirmar_senha = request.POST.get('confirmar_senha')
        print(username)
        print(senha)
        print(confirmar_senha)
        
        if not senha == confirmar_senha:
            return redirect('/usuarios/cadastro')


        return HttpResponse("Testando form")

