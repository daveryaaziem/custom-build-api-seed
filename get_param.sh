#! /bin/bash
url="http://127.0.0.1:5000/cartoons/$1"
curl -X GET "$url"
