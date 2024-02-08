#!/bin/sh -l
/dalec-tools build-info --definition /github/workspace/$1 >> $GITHUB_OUTPUT
