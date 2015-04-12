#!/bin/bash/

awk 'BEGIN { FS = ","; print "{\n" } ; {print "\t{\"id\": \"" $4 "\", \"name\": \"" $5 "\"}\n"} END {print "}"} ' cartoons.csv > cartoons.json
