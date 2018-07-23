# WRITTEN BY MILO HARTSOE
# script to find all arpabet letters
cut -d ' ' -f 2- editted-cmu-dict.txt | sed $'s/ /\\\n/g' | sort | uniq | tr '\n' ',' | sed 's/,/","/g'
