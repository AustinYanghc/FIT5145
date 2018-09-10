#!/bin/bash
cut -f 1 $1 | perl -p -e 's/\s+/\n/g;' | perl -p -e 's/&gt;/>/g;s/&lt;/</g;' | grep -e ')' -e '(' -e ':p' -e ':D' -e '\^' -e '-_' -e '<' -e '>' | sort | uniq -c | sort -r | head -40 | sed 's/^[ \t]*//g' | sed 's/ /,/g' > potential_emoticon.csv






