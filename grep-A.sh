#!/bin/bash
set -e
set -o pipefail
set -u

f=$(mktemp)
cat grep-A.in | bash ./grep-A.grep > $f

set +e
diff $f grep-A.out 
RC=$?
set -e

if [[ $RC -eq 0 ]]; then
    echo "PASS"
else
    echo "FAIL"
    cat $f
fi

rm $f

