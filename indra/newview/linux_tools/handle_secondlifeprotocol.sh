#!/bin/bash

# Send a URL of the form secondlife://... to Second Life.
#

URL="$1"

if [ -z "$URL" ]; then
    echo Usage: $0 secondlife://...
    exit
fi

[ $(qdbus com.secondlife.ViewerAppAPIService /com/secondlife/ViewerAppAPI|grep GoSLURL|wc -l) -ne 0 ] && {
    qdbus com.secondlife.ViewerAppAPIService /com/secondlife/ViewerAppAPI com.secondlife.ViewerAppAPI.GoSLURL "$URL" >/dev/null 2>&1 &
    exit 0;
} 
RUN_PATH=`dirname "$0" || echo .`
cd "${RUN_PATH}/.."

exec ./secondlife -url \'"${URL}"\'

