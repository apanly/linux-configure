#!/bin/sh
# generate tag file for lookupfile plugin
echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/" > lookupfiletags
find $1 -not -regex '.*\.\(png\|gif\)' -type f -printf "%f\t%p\t1\n" | \
sort -f >> lookupfiletags
