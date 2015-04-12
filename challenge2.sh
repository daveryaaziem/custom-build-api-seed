#!/bin/bash/

awk 'BEGIN { FS = ","; print "{\n" } ; {print "\t{\"id\": \"" $4 "\", \"name\": \"" $5 "\"}\n"} END {print "}"} ' cartoons.csv > cartoons.json

awk '{ if ($0 != "{" && $0 != "}" ){curl --request  POST "http://localhost:5000/cartoons/app/" --data $0 } }' cartoons.json
