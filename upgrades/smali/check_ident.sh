#!/bin/sh

for i in $(find . -type f -name "*smali"); do
	xxdiff $i /home/dummy/devel/qqmusic/smali.orig/smali/$i
done

