for user in $(awk -F: '{print $1}' /etc/passwd); do groups $user; done

awk -F':' 'NR==FNR{ a[$3]=$1; next }{ print $1", "a[$4] }' /etc/group /etc/passwd
-F':' - field separator
NR==FNR{ a[$3]=$1; next } - processing the 1st input file (i.e. /etc/group):
a[$3]=$1 - capture group name $1 using group identifier $3 as array a key
next - jump to next record
{ print $1", "a[$4] } - action for the 2nd input file (i.e. /etc/passwd):
$1 - the 1st field; indicating user name
a[$4] - get group name by group id (presented by field $4)
