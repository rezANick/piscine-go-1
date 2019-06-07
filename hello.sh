#! /bin/bash

var=$( curl -s https://api.github.com/users/SuperSidick | jq '.login')

echo "Hello SuperSidick!"
