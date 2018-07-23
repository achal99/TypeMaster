# WRITTEN BY MILO HARTSOE
# script for file renaming of png images
for f in $(find . | grep '.png$'); do mv $f $(printf '%d' $( echo $(echo -n $f | cut -d '_' -f 1) | sed -e "s/\.\///g" | sed -e "s/^/\'/g" | sed -e "s/$/\'/g")).png; done
