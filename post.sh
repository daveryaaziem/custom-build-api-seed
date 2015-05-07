 #! /bin/bash 
while read line
do
  
	curl -X POST http://127.0.0.1:5000/cartoons/ --data "$line" --header "Content-Type: application/json"	 
 	  
  
done
