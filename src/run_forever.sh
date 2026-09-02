#!/bin/bash

PYTHON_SCRIPT_PATH=$1
ERROR_CODE=$?

while true
do
    python "$PYTHON_SCRIPT_PATH"
    if [ $ERROR_CODE -ne 0 ]; then
        echo "Script crashed with exit code $ERROR_CODE. Restarting..." >&2
        sleep 1
    fi
done