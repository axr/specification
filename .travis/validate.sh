#!/bin/bash

root=$(git rev-parse --show-toplevel)
html=$($root/.travis/html5check.py -g $root/specification.html)
xhtml=$($root/.travis/html5check.py -g -x $root/specification.html)

if [ ! -z "$html" ] ; then
    echo "$html"
    exit 1
fi

if [ ! -z "$xhtml" ] ; then
    echo "$xhtml"
    exit 1
fi
