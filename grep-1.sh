#!/bin/bash
set -e
set -o pipefail
set -u

f=$(mktemp)
cat grep-1.in | bash ./grep-1.grep > $f

set +e
diff $f grep-1.out 
RC=$?
set -e

if [[ $RC -eq 0 ]]; then
    echo "PASS"
else
    echo "FAIL"
    cat $f
fi

rm $f

