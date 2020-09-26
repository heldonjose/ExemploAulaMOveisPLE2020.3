from django.core.serializers import json
from django.http import JsonResponse
from django.shortcuts import render
import json

# Create your views here.
from django.views.decorators.csrf import csrf_exempt
from requests import post

from core.models import Empresa


@csrf_exempt
def verificarDados(request):
    print('verificarDados')
    print(request)
    print(request.POST)
    print(request.GET)
    body = get_body(request)
    print(body)
    nome = body.get('nome', None)
    contatos = body.get('contatos', None)
    print(nome)

    for contato in contatos:
        print(contato)

    empresas = Empresa.objects.all()
    empresas = [e.getJson() for e in empresas]

    responser = {
        'flag': False,
        'empresas': empresas
    }
    return JsonResponse(responser)


def get_body(request):
    body = request.body.decode('utf-8')
    body = json.loads(body)
    return body
