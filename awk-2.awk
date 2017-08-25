awk '{
if ($2 >= 50 && $3 >= 50 && $4 >= 50) grade="Pass";
else grade="Fail";
print $1,":",grade;
}'
