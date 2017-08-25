#!/bin/bash
set -e
set -o pipefail
set -u

s=$( basename $0 .sh)

f=$(mktemp)
cat ${s}.in | bash ./${s}.awk > $f

set +e
diff $f ${s}.out 
RC=$?
set -e

if [[ $RC -eq 0 ]]; then
    echo "PASS"
else
    echo "FAIL"
    cat $f
fi

rm $f

