from django.contrib import admin

# Register your models here.
from core.models import Empresa, UserProfile

admin.site.register(Empresa)
admin.site.register(UserProfile)