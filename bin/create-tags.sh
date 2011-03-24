#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 (motoka|zend)"
    exit 1;
fi

tag=$1

if [ -x /usr/bin/ctags-exuberant ]; then

    if [ $tag = 'motoka' ]; then
        cd ~/NetBeansProjects/Motoka/library/Motoka
        exec /usr/bin/ctags-exuberant -f ~/.vim/mytags/motoka \
        -h ".php" -R \
        --exclude="\.svn" \
        --totals=yes \
        --tag-relative=yes \
        --PHP-kinds=+cf \
        --regex-PHP='/abstract class ([^ ]*)/\1/c/' \
        --regex-PHP='/interface ([^ ]*)/\1/c/' \
        --regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'
    fi

    if [ $tag = 'zend' ]; then
        cd ~/NetBeansProjects/Motoka/library/Zend
        exec /usr/bin/ctags-exuberant -f ~/.vim/mytags/zend \
        -h ".php" -R \
        --exclude="\.svn" \
        --totals=yes \
        --tag-relative=yes \
        --PHP-kinds=+cf \
        --regex-PHP='/abstract class ([^ ]*)/\1/c/' \
        --regex-PHP='/interface ([^ ]*)/\1/c/' \
        --regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'
    fi
fi
