from django.shortcuts import render


def exec_list(request):

    executes = [
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

    return render(request, 'executes/exec_list.html',
                  context={
                      'executes': executes,
                  })
