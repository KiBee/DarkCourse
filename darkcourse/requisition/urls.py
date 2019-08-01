from django.contrib import admin
from django.urls import path, include
from django.conf.urls import url
from .views import *

urlpatterns = [
    url(r'^$', requisitions_list, name='requisitions'),
    url(r'create_requisition', create_requisition, name='create_requisition'),
]
