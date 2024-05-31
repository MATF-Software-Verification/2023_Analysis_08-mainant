## Statička analiza alatom Cppcheck

U nastavku se nalazi uputstvo za pokretanje statičke analize koda uz pomoć alata cppcheck. 
Skripte koje pokreću analizu su cppcheck.sh i cppcheck_xml.sh locirane u ovom folderu.

### Preduslovi pokretanja
Potrebno je instalirati cppcheck alat na mašini u okviru koje se data skripte pokreću.

```bash
sudo apt-get install cppcheck
```

### Pokretanje
Potrebno je pozicionirati se u folder `/cppcheck` i podesiti odgovarajuća prava pristupa. Nakon toga pokrećete jednu od prethodno dve pomenute skripte.

```bash
cd cppcheck

chmod +x cppcheck.sh
chmod +x cppcheck_xml.sh

./cppcheck.sh
./cppcheck_xml.sh

```
Skripta `cppcheck.sh` pokreće alat. 
Dodatne opcije koje su korišćene prilikom pokretanja samog alata: 
  -   --quiet - alat ne daje nikakv dodatni ispis za vreme rada
  -   --enable=all - uključuju se sve dostupne provere
  -   --suppress=missingInclude - ignorišu se greske koje se dobijaju iz header-a (kako bi se izbegao problem sa proveravanjem eksternih biblioteka koje se uključuju u header fajlovima)

Rezultat analize nalazi se u direktorijumu `/cppcheck` u `.txt` fajlu.


Skripta cppcheck_xml.sh, pored cppcheck analize koja beleži svoj rezultat u xml formatu, sadrži pokretanje alata cppcheck-htmlreport. To je alat koji generiše HTML izveštaj na osnovu izlaza cppcheck analize. Time se olakšava vizuelni pregled lociranih problema.

Kada skripta završi sa radom, otvara se generisan HTML fajl (report/index.html) u Firefox web pregledaču radi vizuelnog prikaza rezultata.
