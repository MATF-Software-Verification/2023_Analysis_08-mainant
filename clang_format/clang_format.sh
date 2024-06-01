#!/bin/bash

# Postavljanje varijabli
CLANG_FORMAT="clang-format"
CONFIG_FILE=".clang-format"

# Provera postojanja alata clang-format
if ! command -v "$CLANG_FORMAT" &> /dev/null; then
    echo "Greška: Alat clang-format nije pronađen."
    exit 1
fi

# Izvršavanje komande za generisanje .clang-format konfiguracijske datoteke
echo "Generisanje .clang-format datoteke..."
"$CLANG_FORMAT" -style=google -dump-config > "$CONFIG_FILE"

# Provera da li je komanda uspešno izvršena
if [ $? -ne 0 ]; then
    echo "Greška: Generisanje .clang-format datoteke nije uspelo."
    exit 1
fi

echo "Konfiguracijska datoteka uspešno generisana: $CONFIG_FILE"
exit 0
