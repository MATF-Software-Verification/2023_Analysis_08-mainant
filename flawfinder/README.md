## Preduslovi pokretanja flawfinder-a

Na mašini na kojoj se skripta pokreće potrebno je instalirati ovaj alat.

```bash
sudo apt-get install flawfinder
```

### Pokretanje
Nakon kloniranja repozitorijuma potrebno je pozicionirati se u folder /flawfinder.
Pre pokretanja skripte, potrebno je podesiti joj prava pristupa.

```bash
cd flawfinder

chmod +x flawfinder.sh

```

Nakon podešavanja prava pristupa pokrećemo skriptu `flawfinder.sh`.

```bash
./flawfinder.sh

```

Kompletan rezultat primene ovog alata smešten je u okviru fajla `flawfinder result.html`, u okviru kojeg za svaku od prijavljenih grešaka
postoji link ka dokumentaciji. U okviru dokumentacije se mogu naći detaljnije informacije o samoj grešci.
