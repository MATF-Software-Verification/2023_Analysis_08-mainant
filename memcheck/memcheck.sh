#!/usr/bin/bash

set -e

echo "Pokrecem memcheck analizu..."

valgrind --tool=memcheck --leak-check=full --show-leak-kinds=all --undef-value-errors=yes --log-file="memcheck_$(date +%s).out" ../08-mainant/build/MainAnt

# Ispis poruke o završetku analize
echo "Memcheck analiza uspesno zavrsena. Rezultati su dostupni u .out fajlu"
