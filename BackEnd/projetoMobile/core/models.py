from django.db import models


# Create your models here.


class Empresa(models.Model):
    razao = models.CharField(max_length=255)

    def __str__(self):
        return self.razao

    def getJson(self):
        return dict(
            id=self.id,
            razao=self.razao
        )

class UserProfile(models.Model):
    login = models.CharField(max_length=255)
    senha = models.CharField(max_length=255)
    empresa = models.ForeignKey(Empresa, on_delete=models.PROTECT)

    def __str__(self):
        return self.login
