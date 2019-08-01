from django.http import HttpResponse, Http404
from django.shortcuts import render
from django.views.generic.edit import FormView
from django.contrib.auth.forms import UserCreationForm


def home(request):

    top_req = [
        {
            'head': 'TEST REQUISITION',
            'about': 'Lorem ipsum dolor sit amet,'
                     'consectetur adipisicing elit.'
                     'A amet assumenda excepturi iste'
                     'magni nobis pariatur quas quibusdam'
                     'voluptate voluptatibus?',
            'price': '1500 RUB'
        },
        {
            'head': 'TEST REQUISITION',
            'about': 'Lorem ipsum dolor sit amet,'
                     'consectetur adipisicing elit.'
                     'A amet assumenda excepturi iste'
                     'magni nobis pariatur quas quibusdam'
                     'voluptate voluptatibus?',
            'price': '1500 RUB'
        },
        {
            'head': 'TEST REQUISITION',
            'about': 'Lorem ipsum dolor sit amet,'
                     'consectetur adipisicing elit.'
                     'A amet assumenda excepturi iste'
                     'magni nobis pariatur quas quibusdam'
                     'voluptate voluptatibus?',
            'price': '1500 RUB'
        },
    ]

    top_exec = [
        {
            'head': 'SANYA',
            'about': 'Lorem ipsum dolor sit amet,'
                     'consectetur adipisicing elit.'
                     'A amet assumenda excepturi iste'
                     'magni nobis pariatur quas quibusdam'
                     'voluptate voluptatibus?',
            'price': '5 ZVEZD'
        },
        {
            'head': 'MISHA',
            'about': 'Lorem ipsum dolor sit amet,'
                     'consectetur adipisicing elit.'
                     'A amet assumenda excepturi iste'
                     'magni nobis pariatur quas quibusdam'
                     'voluptate voluptatibus?',
            'price': '5 ZVEZD'
        },
        {
            'head': 'OLEG',
            'about': 'Lorem ipsum dolor sit amet,'
                     'consectetur adipisicing elit.'
                     'A amet assumenda excepturi iste'
                     'magni nobis pariatur quas quibusdam'
                     'voluptate voluptatibus?',
            'price': '4.3 ZVEZDY'
        },
    ]

    return render(request, 'index.html',
                  context={
                      'top_req': top_req,
                      'top_exec': top_exec,
                  })



