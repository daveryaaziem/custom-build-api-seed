#!/bin/bash/
echo "2 is $2"
curl --request PUT  "http://127.0.0.1:5000/cartoons/$1" --data "$2" -H "Content-Type: application/json" 
