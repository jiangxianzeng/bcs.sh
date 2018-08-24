#!/bin/sh

[ -z "$BCSSH_URL" ] && BCSSH_URL=https://raw.githubusercontent.com/jiangxianzeng/bcs.sh/master/sheets/

opts=""
input=""
for o; do
	input="$input $o"
done

query=$(echo "$input" | sed 's@ *$@@; s@^ *@@; s@ @/@; s@ @+@g')

curl -s "${BCSSH_URL}"/"$query"

exit 0
