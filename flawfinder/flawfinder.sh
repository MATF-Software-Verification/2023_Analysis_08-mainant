#!/usr/bin/bash

set -xe

flawfinder --html ../08-mainant > flawfinder_result.html

echo "finished flawfinder"

firefox flawfinder_result.html
