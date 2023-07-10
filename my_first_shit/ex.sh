#!/bin/bash

# Get the argument passed to the script
port=$1

# Check if the argument is provided
if [ -z "$port" ]; then
  echo "plz gimme 4 digit port!"
  exit 1
fi

docker build -t my-html-app .
docker run -d -p $port:80 my-html-app