#!/bin/bash

set -e

failure(){
    echo "Failed at line $1:$2"
}

traps '${LINENO} "BASH_COMMAND"' ERR

echo "Step 1"
false
echo "Step2"