#!/bin/bash
script_home="$(dirname "$(realpath "$0")")"
cd "$script_home"
while IFS= read -r -d '' file; do
	dir="$(dirname "$file")"
	cd "$script_home/$dir"
	make
done < <(find -mindepth 2 -maxdepth 2 -name Makefile -print0)
