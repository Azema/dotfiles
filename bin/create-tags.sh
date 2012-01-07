#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 (motoka|zend|zendx|phpexcel|doctrine|phpunit|dm)"
    exit 1;
fi

tag=$1
ctags=/usr/bin/ctags

if [ -x $ctags ]; then

    if [ $tag = 'motoka' ]; then
        cd ~/Dev/library/
        exec $ctags -f ~/.vim.tags/motoka.tags \
        -h ".php" -R \
        --fields=+l --c-kinds=+p --c++-kinds=+p \
        --exclude="\.svn" \
        --totals=yes \
        --tag-relative=yes \
        --PHP-kinds=+cf \
        --regex-PHP='/abstract class ([^ ]*)/\1/c/' \
        --regex-PHP='/interface ([^ ]*)/\1/c/' \
        --regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'
    fi

    if [ $tag = 'zend' ]; then
        cd ~/Dev/library/Zend
        exec $ctags -f ~/.vim.tags/zend.tags \
        -h ".php" -R \
        --fields=+l --c-kinds=+p --c++-kinds=+p \
        --exclude="\.svn" \
        --totals=yes \
        --tag-relative=yes \
        --PHP-kinds=+cf \
        --regex-PHP='/abstract class ([^ ]*)/\1/c/' \
        --regex-PHP='/interface ([^ ]*)/\1/c/' \
        --regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'
    fi

    if [ $tag = 'zendx' ]; then
        cd ~/Dev/library/ZendX
        exec $ctags -f ~/.vim.tags/zendx.tags \
        -h ".php" -R \
        --fields=+l --c-kinds=+p --c++-kinds=+p \
        --exclude="\.svn" \
        --totals=yes \
        --tag-relative=yes \
        --PHP-kinds=+cf \
        --regex-PHP='/abstract class ([^ ]*)/\1/c/' \
        --regex-PHP='/interface ([^ ]*)/\1/c/' \
        --regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'
    fi

    if [ $tag = 'phpexcel' ]; then
        cd /usr/share/pear/PHPExcel
        exec $ctags -f ~/.vim.tags/phpexcel.tags \
        -h ".php" -R \
        --fields=+l --c-kinds=+p --c++-kinds=+p \
        --exclude="\.svn" \
        --totals=yes \
        --tag-relative=yes \
        --PHP-kinds=+cf \
        --regex-PHP='/abstract class ([^ ]*)/\1/c/' \
        --regex-PHP='/interface ([^ ]*)/\1/c/' \
        --regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'
    fi

    if [ $tag = 'doctrine' ]; then
        cd ~/Dev/library/Doctrine
        exec $ctags -f ~/.vim.tags/doctrine.tags \
        -h ".php" -R \
        --fields=+l --c-kinds=+p --c++-kinds=+p \
        --exclude="\.svn" \
        --totals=yes \
        --tag-relative=yes \
        --PHP-kinds=+cf \
        --regex-PHP='/abstract class ([^ ]*)/\1/c/' \
        --regex-PHP='/interface ([^ ]*)/\1/c/' \
        --regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'
    fi

    if [ $tag = 'phpunit' ]; then
        cd /usr/share/pear/PHPUnit
        exec $ctags -f ~/.vim.tags/phpunit.tags \
        -h ".php" -R \
        --fields=+l --c-kinds=+p --c++-kinds=+p \
        --exclude="\.svn" \
        --totals=yes \
        --tag-relative=yes \
        --PHP-kinds=+cf \
        --regex-PHP='/abstract class ([^ ]*)/\1/c/' \
        --regex-PHP='/interface ([^ ]*)/\1/c/' \
        --regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'
    fi

    if [ $tag = 'dm' ]; then
        cd ~/Dev/Digitaleo/libeo/Dm
        exec $ctags -f ~/.vim.tags/dm.tags \
        -h ".php" -R \
        --fields=+l --c-kinds=+p --c++-kinds=+p \
        --exclude="\.svn" \
        --totals=yes \
        --tag-relative=yes \
        --PHP-kinds=+cf \
        --regex-PHP='/abstract class ([^ ]*)/\1/c/' \
        --regex-PHP='/interface ([^ ]*)/\1/c/' \
        --regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'
    fi
fi
