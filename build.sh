#!/bin/sh
TITLE=aaa__

if test -f index.html; then 
	rm index.html
fi
cat header.html | sed -e "s/{title}/$TITLE/g" > index.html
Markdown.pl index.md >> index.html
cat footer.html >> index.html 
