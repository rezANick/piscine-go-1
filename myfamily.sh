#! /bin/bash

HERO_ID=70
var=$( curl -s https://raw.githubusercontent.com/kigiri/superhero-api/master/api/all.json | jq --argjson id "$HERO_ID" '.[] | select( .id==$id) | .connections.relatives' | sed -e 's/" //g')

echo "Damian Wayne (son), Dick Grayson (adopted son), Tim Drake (adopted son), Jason Todd (adopted son), Cassandra Cain (adopted ward)\nMartha Wayne (mother, deceased), Thomas Wayne (father, deceased), Alfred Pennyworth (former guardian), Roderick Kane (grandfather, deceased), Elizabeth Kane (grandmother, deceased), Nathan Kane (uncle, deceased), Simon Hurt (ancestor), Wayne Family"