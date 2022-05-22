#!/bin/sh
set -euo pipefail

printf 'hello \n'

#1
pwd

#2
mkdir -p dir1

#3
cd dir1

#4
mkdir -p dir1{1..3}

#5
cd dir11

#6
touch file{1..3}.txt file{1,2}.json

#7
mkdir -p dir11{1..3}

#8
ls -lah

#9,10,11
cat > file1.txt << EOF
test1
test2
test3
test11
EOF

#12
cd ..

#13
mv dir11/file{1,2}.txt dir12/

#14
cp dir12/* dir13/

#15
find . -iname '*file1*'

#16
grep test1 dir12/file1.txt

#17
head -n2 dir12/file1.txt

#18
tail -n2 dir12/file1.txt

#19
#less dir12/file1.txt

#20
date

#xtra1
curl http://162.55.220.72:5005/terminal-hw-request

#xtra2
curl "http://162.55.220.72:5005/get_method?name=justnamee&age=99"
