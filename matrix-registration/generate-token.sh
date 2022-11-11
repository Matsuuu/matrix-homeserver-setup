#!/bin/bash

EXPIRATION=$(date -d "+7 days" +%Y-%m-%d)
API_PASSWORD=$(cat data/config.yaml | grep -P "(?<=admin_api_shared_secret: ')(\w+)" -oh)

curl -X POST \
     -H "Authorization: SharedSecret "$API_PASSWORD"" \
     -H "Content-Type: application/json" \
     -d '{"max_usage": 1, "expiration_date": "'$EXPIRATION'"}' \
     http://localhost:5000/api/token
