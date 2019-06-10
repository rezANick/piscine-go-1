#! /bin/bash

var=$( curl -s https://raw.githubusercontent.com/kigiri/superhero-api/master/api/all.json | jq --argjson id "$HERO_ID" '.[] | select( .id==$id) | .connections.relatives' | sed -e 's/" //g')

echo "Marlo Chandler-Jones (wife); Polly (aunt); Mrs. Chandler (mother-in-law); Keith Chandler, Ray Chandler, three unidentified others (brothers-in-law); unidentified father (deceased); Jackie Shorr (alleged mother; unconfirmed)"