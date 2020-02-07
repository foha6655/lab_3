#!/bin/bash
# Authors : Forrest Haugaard
# Date: 2/6/2020

echo "enter a filename: "
read fileName
echo "enter an expression: "
read exp
grep "$exp" $fileName
grep -c '\(([0-9]\{3\})\|[0-9]\{3\}\)-[0-9]\{3\}-[0-9]\{4\}' $fileName
grep -c "@" $fileName
egrep -o "^[303]{3}-[0-9]{3}-[0-9]{4}$" $fileName
egrep "@geocities.com" $fileName >> email_results.txt
