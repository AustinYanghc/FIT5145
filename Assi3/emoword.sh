#!/bin/bash

for E in `cat emoticon.csv | tr ',' '\t' | cut -f 2`; do
echo $E
echo "~~~~~These are the most frequent words co-occurring with $E~~~~~" | cat >> result.txt
./emoword.py $E < msgraw_sample.txt | grep -v -e '^the$' -e '^in$' -e '^is$' -e '^at$' -e '^at$' -e '^which$' -e '^on$' | sort | uniq -c | perl -p -e 's/^\s+//; s/ /\t/; ' | sort -r | head -20 >> result.txt
done


