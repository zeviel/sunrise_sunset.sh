#!/bin/bash

api="https://api.sunrise-sunset.org"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_sunrise_sunset() {
    # 1 - lat: (float): <latitude>
    # 2 - lng: (float): <longitude>
    # 3 - date: (string): <date - default: today>
    # 4 - formatted: (integer): <0, 1 - default: 0>
    curl --request GET \
        --url "$api/json?lat=$1&lng=$2&date=${3:-today}&formatted=${4:-0}" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}
