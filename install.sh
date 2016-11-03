#!/bin/bash

git clone git@github.com:alexraileanu/phpswitcher.git /tmp/phpswitcher

cd /usr/local/bin

ln -s /tmp/phpswitcher/phpswitcher.sh phpswitcher