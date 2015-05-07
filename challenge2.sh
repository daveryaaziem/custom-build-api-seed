#!/bin/bash/

awk 'BEGIN { FS = ","; f=0 } ; {print "\t{\"id\": \"" $4 "\", \"name\": \"" $5 "\", \"image\": \"" $14 "\", \"score\": \"" $2 "\"}\n"} ' cartoons.csv > cartoons.json

#awk 'BEGIN {f=0}{ if ( f != 0 ){curl --request  POST "http://127.0.0.1:5000/cartoons/" --data $0 } f = f + 1 }' cartoons.json
