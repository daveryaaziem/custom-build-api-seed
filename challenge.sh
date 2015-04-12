#!/bin/bash

curl --request POST 'http://localhost:5000/books/app/' \ --data 'name=Book1' 
curl --request GET 'http://localhost:5000/books/app/' \ --data 'name=Book1'
curl --request PUT 'http://localhost:5000/books/app/1' \ --data 'name=1Book'
curl --request DELETE 'http://localhost:500/books/app/1'

X=0
while [ $X -lt 30 ]; do
	curl --request POST 'http://localhost:5000/book/app' \ --data 'name=Book$X'
done
