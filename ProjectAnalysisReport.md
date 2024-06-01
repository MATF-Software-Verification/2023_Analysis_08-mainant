# Izveštaj sprovedene analize

Korišćeni alati:
- [Cppcheck](#cppcheck)

## Cppcheck
Cppcheck je alat za statičku analizu C i C++ koda, čija je primarna svrha pronalaženje potencijalnih problema pre izvršavanja programa. Pruža programerima informacije o kvalitetu njihovog koda, olakšavajući proces poboljšanja. Ovaj alat je posebno koristan za otkrivanje curenja memorije, identifikaciju neinicijalizovanih promenljivih, pronalaženje potencijalnih problema sa poka-
zivačima, te pomaže u održavanju konzistentnosti koda.

### Postupak analize
Za cppcheck analizu korišćen je terminal a koraci pokretanja alata opisani u okviru README.md (cppcheck/README.md).

### Zaključci
Nakon pokretanja skripta `cppcheck_xml.sh dobijen je detaljan izveštaj u okviru kog možemo videti sva upozorenja sa tačnim mestom u kodu gde su upozorenja pronađena. Izveštaj je prikazan na slici ispod:

![](cppcheck/pictures/statistic1.png)
![](cppcheck/pictures/statistic2.png)

Jedno od upozorenja odnosi se na funkcije i promenljive koje su deklarisanje ali nisu korišćene.

![](cppcheck/pictures/unused_func_and_var.png)

Takođe, vidimo da se kao upozorenje javlja postojanje konstruktora koji primaju jedan argument a nisu deklarisani ključnom rečju explicit.

![](cppcheck/pictures/explicit_constructor.png)

Često upozorenje na koja je alat Cppcheck ukazao se tiče toga da neke izvedene klase definišu promenljive sa istim imenom koje je već definisano u roditeljskoj klasi. Ovo se često naziva **shadowing** ili **senčenje** i može dovesti do konfuzije u kodu. Da bi se izbegle potencijalne greške i konfuzija, preporučuje se izbegavanje imenovanja članova sa istim imenom u izvedenim klasama kao i u njihovim roditeljskim klasama. Umesto toga, razmislite o preimenovanju članova kako bi izbegli sukobe imena i olakšali razumevanje koda.



