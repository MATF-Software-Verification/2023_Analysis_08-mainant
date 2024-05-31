#!/usr/bin/bash

set -e

echo "Pokrecem cppcheck staticku analizu..."

if cppcheck --quiet --enable=all --suppress=missingInclude --force --output-file=output.xml --xml  ../08-mainant; then
    echo "Cppcheck analiza uspesno zavrsena!"
    echo "Generise se HTML izvestaj..."

    if cppcheck-htmlreport --file=output.xml --report-dir=report; then
        echo "HTML izvestaj je generisan, otvaramo report/index.html fajl"
        firefox report/index.html
    else
        echo "Greska pri generisanju HTML izvestaja."
    fi
else
    echo "Greska pri statickoj analizi."
fi
