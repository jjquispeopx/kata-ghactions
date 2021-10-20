#!/bin/bash

CHANGES=`git --no-pager diff --name-only HEAD~1 | sort -u | uniq`
BACKEND_CHECK=`echo $CHANGES | grep backend/`

echo "$BACKEND_CHECK"

if [ ! $(echo $CHANGES | grep backend) ]; then
	echo "Hello"
fi
