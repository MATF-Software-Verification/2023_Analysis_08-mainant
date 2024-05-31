#!/bin/bash

set -e

echo "Pokrecem cppcheck staticku analizu..."

if cppcheck --quiet --enable=all --suppress=missingInclude --output-file="cppcheck_$(date +%s).txt" ../08-mainant; then
    echo "Analiza je uspesno zavrsena! Za pregled rezultata otvorite .txt fajl"
else
    echo "Greska: Cppcheck analiza nije uspela."
fi
