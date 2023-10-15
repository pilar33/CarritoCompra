from django.shortcuts import render, redirect
from django.contrib.auth import logout

from django.shortcuts import render
from django.contrib.auth import authenticate, login
from django.http import HttpResponseRedirect
from django.urls import reverse

# Create your views here.

def home(request):
    return render(request,'home.html')

# def loguin(request):
#     return render(request,'login.html')

# def custom_login(request):
#     error_message = None

#     if request.method == 'POST':
#         username = request.POST.get('username')
#         password = request.POST.get('password')
#         user = authenticate(request, username=username, password=password)

#         if user is not None:
#             login(request, user)
#             return HttpResponseRedirect(reverse('home'))  # Redirigir al usuario a la página de inicio
#         else:
#             error_message = "Credenciales incorrectas"

#     return render(request, 'login.html', {'error_message': error_message})


def exit(request):
    logout(request)
    return redirect('Home')

