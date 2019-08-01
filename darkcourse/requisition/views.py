from django.shortcuts import render


def requisitions_list(request):
    requisitions = [
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

    return render(request, 'requisition/req_list.html',
                  context={
                      'requisitions': requisitions,
                  })


def create_requisition(request):
    return render(request, 'requisition/create_req.html')
