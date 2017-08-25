#!/bin/bash
set -e
set -o pipefail
set -u

f=$(mktemp)
cat grep-B.in | bash ./grep-B.grep > $f

set +e
diff $f grep-B.out 
RC=$?
set -e

if [[ $RC -eq 0 ]]; then
    echo "PASS"
else
    echo "FAIL"
    cat $f
fi

rm $f

