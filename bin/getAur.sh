#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 pkgName"
	exit 1;
fi

pkgname=$1

wget http://aur.archlinux.org/packages/$pkgname/$pkgname.tar.gz
tar xzvf $pkgname.tar.gz
cd $pkgname
makepkg -si
