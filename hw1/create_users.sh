#!/bin/bash

# create Ekaterina Golubeva
curl -0 -v -X POST http://localhost:8080/api/v0/users \
-H "Expect:" \
-H 'Content-Type: application/json; charset=utf-8' \
--data-binary @- << EOF
{
	"name": "e.a.golubeva"
}
EOF

# update Ekaterina Golubeva
curl -0 -v -X PUT http://localhost:8080/api/v0/users/e.a.golubeva \
-H "Expect:" \
-H 'Content-Type: application/json; charset=utf-8' \
--data-binary @- << EOF
{
	"contacts": {
		"call": "+7 123-456-7890", 
		"email": "e.a.golubeva@student.com",
		"slack": "e.a.golubeva",       
		"sms": "+7 123-456-7890"    
	},    
	"full_name": "Ekaterina Golubeva",    
	"photo_url": null,    
	"time_zone": "Europe/Moscow",    
	"active": 1 
} 
EOF

# create Sergey Petrov
curl -0 -v -X POST http://localhost:8080/api/v0/users \ 
-H "Expect:" \ 
-H 'Content-Type: application/json; charset=utf-8' \ 
--data-binary @- << EOF 
{    
	"name": "s.petrov" 
} 
EOF


# update Sergey Petrov
curl -0 -v -X PUT http://localhost:8080/api/v0/users/s.petrov \ 
-H "Expect:" \ 
-H 'Content-Type: application/json; charset=utf-8' \ 
--data-binary @- << EOF 
{    
	"contacts": {       
		"call": "+7 111-111-1111",       
		"email": "s.petrov@student.com",       
		"slack": "s.petrov",       
		"sms": "+7 111-111-1111"    
	},    
	"full_name": "Sergey Petrov",    
	"photo_url": null,    
	"time_zone": "Europe/Moscow",    
	"active": 1 
} 
EOF

# create Vasiliy Pupkin
curl -0 -v -X POST http://localhost:8080/api/v0/users \ 
-H "Expect:" \ 
-H 'Content-Type: application/json; charset=utf-8' \ 
--data-binary @- << EOF 
{    
	"name": "v.pupkin" 
} 
EOF


# update Vasiliy Pupkin
curl -0 -v -X PUT http://localhost:8080/api/v0/users/v.pupkin \ 
-H "Expect:" \ 
-H 'Content-Type: application/json; charset=utf-8' \ 
--data-binary @- << EOF 
{    
	"contacts": {       
		"call": "+7 111-111-2222",       
		"email": "v.pupkin@student.com",       
		"slack": "v.pupkin",       
		"sms": "+7 111-111-2222"    
	},    
	"full_name": "Vasiliy Pupkin",    
	"photo_url": null,    
	"time_zone": "Europe/Moscow",    
	"active": 1 
} 
EOF

# create Ivan Ivanov
curl -0 -v -X POST http://localhost:8080/api/v0/users \ 
-H "Expect:" \ 
-H 'Content-Type: application/json; charset=utf-8' \ 
--data-binary @- << EOF 
{    
	"name": "i.ivanov" 
} 
EOF


# update Ivan Ivanov
curl -0 -v -X PUT http://localhost:8080/api/v0/users/i.ivanov \
-H "Expect:" \ 
-H 'Content-Type: application/json; charset=utf-8' \ 
--data-binary @- << EOF 
{    
	"contacts": {       
		"call": "+7 111-111-3333",       
		"email": "i.ivanov@student.com",       
		"slack": "i.ivanov",       
		"sms": "+7 111-111-3333"    
	},    
	"full_name": "Ivan Ivanov",    
	"photo_url": null,    
	"time_zone": "Europe/Moscow",    
	"active": 1 
} 
EOF
