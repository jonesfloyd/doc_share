#!/bin/bash

cd ~/temp/sapOut/html
unset LANG
sed -i '' 's/\[node:\([0-9]*\)]/<a href="http:\/\/docs.apigee.com\/node\/\1">http:\/\/docs.apigee.com\/node\/\1<\/a>/g' *.html
sed -i '' 's/\[node:\([0-9]*\),title="\([A-Za-z0-9 ]*\)"]/<a href="http:\/\/docs.apigee.com\/node\/\1">\2<\/a>/g' *.html
sed -i '' 's/\[\[nid:\([0-9]*\)\]\]/<a href="http:\/\/docs.apigee.com\/node\/\1">Content to be inserted here<\/a>/g' *.html
sed -i '' 's/src="\/sites\/docs\/files/src="sites\/docs\/files/g' *.html
sed -i '' 's/src="\/docs\/sites\/docs\/files/src="sites\/docs\/files/g' *.html
grep "\[node:" *.html
grep "\[\[nid:" *.html
grep "src=\"\/sites" *.html
grep "src=\"\/docs" *.html





