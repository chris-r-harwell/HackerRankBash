#
# Note that for hacker rank you need the awk in this 
# file.
# INPUT
# file 
# 4 space-separated columns containing the scores of students in three subjects. 
# col 1 a single character (A-Z) - the identifier of the student.
# col 2-4 three numbers range 0-100 inclusive 
# col 2 English
# col 3 Mathematics
# col 4 Science
#
# Task: find letter grade
# if avg >= 80 then A
# else if avg >= 60 B
# else if avg >= 50 C
# else FAIL
#
awk 'ORS=NR%2?";":"\n"'
