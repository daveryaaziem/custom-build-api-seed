#!/bin/bash/

awk 'BEGIN { FS = ","; f=0 } ; {print "\t{\"id\": \"" $4 "\", \"name\": \"" $5 "\", \"image\": \"" $14 "\", \"score\": \"" $2 "\"}\n"} ' cartoons.csv > cartoons.json


