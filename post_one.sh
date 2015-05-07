 #! /bin/bash 

curl -X POST http://127.0.0.1:5000/cartoons/ --data "$1" --header "Content-Type: application/json"	 
 	  
  

