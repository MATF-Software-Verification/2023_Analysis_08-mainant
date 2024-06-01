## Memcheck 

U nastavku se nalazi uputstvo za pokretanje Memcheck alata
Skripta koja pokreće alat je `memcheck.sh`.

### Preduslovi pokretanja
Za profajliranje potrebno je, na mašini na kojoj se skripta pokreće, instalirati Valgrind alat.

```bash
sudo apt-get install valgrind
```

### Pokretanje
Potrebno je pozicionirati se u folder `/memcheck`. 
Sa te lokacije, nakon što podesite prava pristupa, prvo pokrećete skriptu `build_memcheck.sh` koja će izgraditi projekat, a zatim skriptu `memcheck.sh` koja pokreće sam alat. 

```bash
cd memcheck

chmod +x build_memcheck.sh
./build_memcheck.sh

chmod +x memcheck.sh
./memcheck.sh
```

Alat pokrećemo sa dodatnim opcijama: 
- --show-leak-kinds=all - prikaz svih vrsta curenja memorije
- --leak-check=full - potpuno praćenje svih vrsta curenja memorije kao i mesta alokacije memorije
- --undef-value-errors=yes - prikazivanje grešaka koje se odnose na upotrebu neinicijalizovane vrednosti
-  --log-file="" - postavlja ime datoteke u kojoj će se sačuvati izveštaj


Nakon toga, pokrećemo skriptu `clean_memcheck.sh` koja će ukloniti sve nepotrebne fajlove.

```bash
chmod +x clean_memcheck.sh
./clean_memcheck.sh
```
Rezultat profajliranja nalazi se u direktorijumu `/memcheck` u `.out` fajlu.
