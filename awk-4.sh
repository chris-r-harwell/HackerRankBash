#!/bin/bash
set -e
set -o pipefail
set -u

f=$(mktemp)
cat awk-4.in | bash ./awk-4.awk > $f

set +e
diff $f awk-4.out 
RC=$?
set -e

if [[ $RC -eq 0 ]]; then
    echo "PASS"
else
    echo "FAIL"
    cat $f
fi

rm $f

