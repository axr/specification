#!/bin/bash

html=$(./html5check.py -g specification.html)
xhtml=$(./html5check.py -g -x specification.html)

if [ ! -z "$html" ] ; then
    echo "$html"
    exit 1
fi

if [ ! -z "$xhtml" ] ; then
    echo "$xhtml"
    exit 1
fi
