#!/bin/bash
f=`echo $1 | cut -d @ -f 1 | sed 's/xdebug:\/\///'`
l=`echo $1 | cut -d @ -f 2`
gvim --remote-tab +$l $f
