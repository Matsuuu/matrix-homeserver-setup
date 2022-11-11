#!/bin/bash

API_PASSWORD=$(cat data/config.yaml | grep -P "(?<=admin_api_shared_secret: ')(\w+)" -oh)

curl -H "Authorization: SharedSecret "$API_PASSWORD"" \
     http://localhost:5000/api/token
