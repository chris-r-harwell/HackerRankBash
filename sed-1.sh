#!/bin/bash
set -e
set -o pipefail
set -u

f=$(mktemp)
cat sed-1.in | bash ./sed-1.sed > $f

set +e
diff $f sed-1.out 
RC=$?
set -e

if [[ $RC -eq 0 ]]; then
    echo "PASS"
else
    echo "FAIL"
    cat $f
fi

rm $f

