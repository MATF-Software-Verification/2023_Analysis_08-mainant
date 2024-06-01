#!/usr/bin/bash

set -e

# Podrazumevane vrednosti za opcije
ANNOTATE=false
KCACHEGRIND=false

OUTPUT_FILE="callgrind_$(date +%s).out"

QMAKE=/usr/lib/qt5/bin/qmake

if [ $# -lt 0 ]; then
    echo "Greska: Nedovoljan broj argumenata. Upotreba: $0 [-a] [-k]"
    exit 1
fi

if [ "$1" = "-a" ] && [ "$2" = "-k" ]; then
    ANNOTATE=true 
    KCACHEGRIND=true
elif [ "$1" = "-k" ]; then
    KCACHEGRIND=true
elif [ "$1" = "-a" ]; then
    ANNOTATE=true
else
    echo "Bice pokrenut samo alat callgrind."
fi

echo "Pokrecem callgrind analizu..."

valgrind --tool=callgrind --quiet --callgrind-out-file="$OUTPUT_FILE" ../08-mainant/build/MainAnt

# Ako je opcija -a zadata, koristi callgrind_annotate
if [ "$ANNOTATE" = true ]; then
    echo "Pokrecem alat callgrind annotate..."
    callgrind_annotate "$OUTPUT_FILE" > "annotate_$OUTPUT_FILE"
fi
#Ako je opcija -k zadata, koristi KCacheGrind
if [ "$KCACHEGRIND" = true ]; then
    echo "Pokrecem alat KCacheGrind..."
    kcachegrind "$OUTPUT_FILE"
fi
