#!/bin/sh

rsync -avrC --exclude=tmp/* --exclude=data/* --exclude=nbproject --exclude=build/* --exclude=log/* --exclude=sql/* --exclude=*.swp --exclude=*.swo --exclude=uploads/* --progress --safe-links ihm.marketeo.net/ dm@dm13:/home/mhervo/www/dev.marketeo.net/
