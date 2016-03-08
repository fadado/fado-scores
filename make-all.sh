#!/bin/sh

for d in *; do
	[[ -d "$d" ]] || continue
	[[ -e "$d/Makefile" ]] || continue
	echo Building "$d"
	cd "$d"
	make
	cd $OLDPWD
done
