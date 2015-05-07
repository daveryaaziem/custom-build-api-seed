#! /bin/bash

echo "Here's a call to GET all data"
sh get.sh
echo "\nHere's a call to GET data based on the id"
sh get_param.sh
echo "\nHere's a call to POST data"
sh post_one.sh '{"name": "test POST", "image": "http://yahoo.com", "score": "100"}'
echo "\nHere's a request to PUT data"
sh put.sh 2 '{"name":"Test PUT", "image":"http://google.com", "score": "99"}'
echo "That's all folks!"
