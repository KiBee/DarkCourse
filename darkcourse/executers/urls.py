from django.contrib import admin
from django.urls import path, include
from django.conf.urls import url
from .views import *

urlpatterns = [
    url(r'^', exec_list, name='execute'),
]