# Using Citations

## Example Paper
Plank survey final results from [this website](https://www.aanda.org/articles/aa/abs/2016/10/aa25830-15/aa25830-15.html).

## Save pdf to zotero
```
Click on right hand sidebar, PDF in new tab
Click on Zotero connector for google chrome, it will download the pdf file.
```


## Download or copy bibtex reference
```
Go to "NASA ADS Abstract Service".  
Go to Export.  
Go to bottom of the page and copy to the clipboard (or, save as export-bibtex.bbl)
Go to overleaf mybib.bib file and paste there.  
Go to paper and `\cite{paper_2018}`, it should show no errors.
```

Failed attempt:
```
Go to zotero.  
Right click the paper and export item as Exported Items.bib.  
Copy the contents to overleaf, but it gave me compilation error for plank paper.
```

Another failed attempt:
```
Go to right sidebar Services > download citation
Select format reference manager RIS and download using zotero to a folder BIBfiles
This also fails.
```


## Working citation
```
@ARTICLE{plank_2016,
       author = {{Planck Collaboration} and {Ade}, P.~A.~R. and {Aghanim}, N. and
        {Arnaud}, M. and {Ashdown}, M. and {Aumont}, J. and
        {Baccigalupi}, C. and {Banday}, A.~J. and {Barreiro}, R.~B. and
        {Bartlett}, J.~G. and {Bartolo}, N. and {Battaner}, E. and
        {Battye}, R. and {Benabed}, K. and {Beno{\^\i}t}, A. and
        {Benoit-L{\'e}vy}, A. and {Bernard}, J. -P. and {Bersanelli}, M.
        and {Bielewicz}, P. and {Bock}, J.~J. and {Bonaldi}, A. and
        {Bonavera}, L. and {Bond}, J.~R. and {Borrill}, J. and
        {Bouchet}, F.~R. and {Boulanger}, F. and {Bucher}, M. and
        {Burigana}, C. and {Butler}, R.~C. and {Calabrese}, E. and
        {Cardoso}, J. -F. and {Catalano}, A. and {Challinor}, A. and
        {Chamballu}, A. and {Chary}, R. -R. and {Chiang}, H.~C. and
        {Chluba}, J. and {Christensen}, P.~R. and {Church}, S. and
        {Clements}, D.~L. and {Colombi}, S. and {Colombo}, L.~P.~L. and
        {Combet}, C. and {Coulais}, A. and {Crill}, B.~P. and {Curto},
        A. and {Cuttaia}, F. and {Danese}, L. and {Davies}, R.~D. and
        {Davis}, R.~J. and {de Bernardis}, P. and {de Rosa}, A. and {de
        Zotti}, G. and {Delabrouille}, J. and {D{\'e}sert}, F. -X. and
        {Di Valentino}, E. and {Dickinson}, C. and {Diego}, J.~M. and
        {Dolag}, K. and {Dole}, H. and {Donzelli}, S. and {Dor{\'e}}, O.
        and {Douspis}, M. and {Ducout}, A. and {Dunkley}, J. and
        {Dupac}, X. and {Efstathiou}, G. and {Elsner}, F. and
        {En{\ss}lin}, T.~A. and {Eriksen}, H.~K. and {Farhang}, M. and
        {Fergusson}, J. and {Finelli}, F. and {Forni}, O. and {Frailis},
        M. and {Fraisse}, A.~A. and {Franceschi}, E. and {Frejsel}, A.
        and {Galeotta}, S. and {Galli}, S. and {Ganga}, K. and
        {Gauthier}, C. and {Gerbino}, M. and {Ghosh}, T. and {Giard}, M.
        and {Giraud-H{\'e}raud}, Y. and {Giusarma}, E. and {Gjerl{\o}w},
        E. and {Gonz{\'a}lez-Nuevo}, J. and {G{\'o}rski}, K.~M. and
        {Gratton}, S. and {Gregorio}, A. and {Gruppuso}, A. and
        {Gudmundsson}, J.~E. and {Hamann}, J. and {Hansen}, F.~K. and
        {Hanson}, D. and {Harrison}, D.~L. and {Helou}, G. and {Henrot-
        Versill{\'e}}, S. and {Hern{\'a}ndez-Monteagudo}, C. and
        {Herranz}, D. and {Hildebrandt}, S.~R. and {Hivon}, E. and
        {Hobson}, M. and {Holmes}, W.~A. and {Hornstrup}, A. and
        {Hovest}, W. and {Huang}, Z. and {Huffenberger}, K.~M. and
        {Hurier}, G. and {Jaffe}, A.~H. and {Jaffe}, T.~R. and {Jones},
        W.~C. and {Juvela}, M. and {Keih{\"a}nen}, E. and {Keskitalo},
        R. and {Kisner}, T.~S. and {Kneissl}, R. and {Knoche}, J. and
        {Knox}, L. and {Kunz}, M. and {Kurki-Suonio}, H. and {Lagache},
        G. and {L{\"a}hteenm{\"a}ki}, A. and {Lamarre}, J. -M. and
        {Lasenby}, A. and {Lattanzi}, M. and {Lawrence}, C.~R. and
        {Leahy}, J.~P. and {Leonardi}, R. and {Lesgourgues}, J. and
        {Levrier}, F. and {Lewis}, A. and {Liguori}, M. and {Lilje},
        P.~B. and {Linden-V{\o}rnle}, M. and {L{\'o}pez-Caniego}, M. and
        {Lubin}, P.~M. and {Mac{\'\i}as-P{\'e}rez}, J.~F. and {Maggio},
        G. and {Maino}, D. and {Mandolesi}, N. and {Mangilli}, A. and
        {Marchini}, A. and {Maris}, M. and {Martin}, P.~G. and
        {Martinelli}, M. and {Mart{\'\i}nez-Gonz{\'a}lez}, E. and
        {Masi}, S. and {Matarrese}, S. and {McGehee}, P. and {Meinhold},
        P.~R. and {Melchiorri}, A. and {Melin}, J. -B. and {Mendes}, L.
        and {Mennella}, A. and {Migliaccio}, M. and {Millea}, M. and
        {Mitra}, S. and {Miville-Desch{\^e}nes}, M. -A. and {Moneti}, A.
        and {Montier}, L. and {Morgante}, G. and {Mortlock}, D. and
        {Moss}, A. and {Munshi}, D. and {Murphy}, J.~A. and {Naselsky},
        P. and {Nati}, F. and {Natoli}, P. and {Netterfield}, C.~B. and
        {N{\o}rgaard-Nielsen}, H.~U. and {Noviello}, F. and {Novikov},
        D. and {Novikov}, I. and {Oxborrow}, C.~A. and {Paci}, F. and
        {Pagano}, L. and {Pajot}, F. and {Paladini}, R. and {Paoletti},
        D. and {Partridge}, B. and {Pasian}, F. and {Patanchon}, G. and
        {Pearson}, T.~J. and {Perdereau}, O. and {Perotto}, L. and
        {Perrotta}, F. and {Pettorino}, V. and {Piacentini}, F. and
        {Piat}, M. and {Pierpaoli}, E. and {Pietrobon}, D. and
        {Plaszczynski}, S. and {Pointecouteau}, E. and {Polenta}, G. and
        {Popa}, L. and {Pratt}, G.~W. and {Pr{\'e}zeau}, G. and
        {Prunet}, S. and {Puget}, J. -L. and {Rachen}, J.~P. and
        {Reach}, W.~T. and {Rebolo}, R. and {Reinecke}, M. and
        {Remazeilles}, M. and {Renault}, C. and {Renzi}, A. and
        {Ristorcelli}, I. and {Rocha}, G. and {Rosset}, C. and
        {Rossetti}, M. and {Roudier}, G. and {Rouill{\'e} d'Orfeuil}, B.
        and {Rowan-Robinson}, M. and {Rubi{\~n}o-Mart{\'\i}n}, J.~A. and
        {Rusholme}, B. and {Said}, N. and {Salvatelli}, V. and
        {Salvati}, L. and {Sandri}, M. and {Santos}, D. and
        {Savelainen}, M. and {Savini}, G. and {Scott}, D. and
        {Seiffert}, M.~D. and {Serra}, P. and {Shellard}, E.~P.~S. and
        {Spencer}, L.~D. and {Spinelli}, M. and {Stolyarov}, V. and
        {Stompor}, R. and {Sudiwala}, R. and {Sunyaev}, R. and {Sutton},
        D. and {Suur-Uski}, A. -S. and {Sygnet}, J. -F. and {Tauber},
        J.~A. and {Terenzi}, L. and {Toffolatti}, L. and {Tomasi}, M.
        and {Tristram}, M. and {Trombetti}, T. and {Tucci}, M. and
        {Tuovinen}, J. and {T{\"u}rler}, M. and {Umana}, G. and
        {Valenziano}, L. and {Valiviita}, J. and {Van Tent}, F. and
        {Vielva}, P. and {Villa}, F. and {Wade}, L.~A. and {Wandelt},
        B.~D. and {Wehus}, I.~K. and {White}, M. and {White}, S.~D.~M.
        and {Wilkinson}, A. and {Yvon}, D. and {Zacchei}, A. and
        {Zonca}, A.},
        title = "{Planck 2015 results. XIII. Cosmological parameters}",
      journal = {\aap},
     keywords = {cosmology: observations, cosmology: theory, cosmic background radiation,
        cosmological parameters, Astrophysics - Cosmology and
        Nongalactic Astrophysics},
         year = 2016,
        month = Sep,
       volume = {594},
          eid = {A13},
        pages = {A13},
          doi = {10.1051/0004-6361/201525830},
 primaryClass = {Astrophysics - Cosmology and Nongalactic Astrophysics},
       adsurl = {https://ui.adsabs.harvard.edu/#abs/2016A&A...594A..13P},
      adsnote = {Provided by the SAO/NASA Astrophysics Data System}
}
```

## Not working citation (from Exported Items.bib) from Zotero export item.
```

@article{planck_collaboration_planck_2016,
	title = {Planck 2015 results},
	volume = {594},
	url = {https://doi.org/10.1051/0004-6361/201525830},
	doi = {10/f9scmm},
	journaltitle = {A\&A},
	author = {{Planck Collaboration} and Ade, P. A. R. and Aghanim, N. and Arnaud, M. and Ashdown, M. and Aumont, J. and Baccigalupi, C. and Banday, A. J. and Barreiro, R. B. and Bartlett, J. G. and Bartolo, N. and Battaner, E. and Battye, R. and Benabed, K. and Benoît, A. and Benoit-Lévy, A. and Bernard, J.-P. and Bersanelli, M. and Bielewicz, P. and Bock, J. J. and Bonaldi, A. and Bonavera, L. and Bond, J. R. and Borrill, J. and Bouchet, F. R. and Boulanger, F. and Bucher, M. and Burigana, C. and Butler, R. C. and Calabrese, E. and Cardoso, J.-F. and Catalano, A. and Challinor, A. and Chamballu, A. and Chary, R.-R. and Chiang, H. C. and Chluba, J. and Christensen, P. R. and Church, S. and Clements, D. L. and Colombi, S. and Colombo, L. P. L. and Combet, C. and Coulais, A. and Crill, B. P. and Curto, A. and Cuttaia, F. and Danese, L. and Davies, R. D. and Davis, R. J. and de Bernardis, P. and de Rosa, A. and de Zotti, G. and Delabrouille, J. and Désert, F.-X. and Di Valentino, E. and Dickinson, C. and Diego, J. M. and Dolag, K. and Dole, H. and Donzelli, S. and Doré, O. and Douspis, M. and Ducout, A. and Dunkley, J. and Dupac, X. and Efstathiou, G. and Elsner, F. and Enßlin, T. A. and Eriksen, H. K. and Farhang, M. and Fergusson, J. and Finelli, F. and Forni, O. and Frailis, M. and Fraisse, A. A. and Franceschi, E. and Frejsel, A. and Galeotta, S. and Galli, S. and Ganga, K. and Gauthier, C. and Gerbino, M. and Ghosh, T. and Giard, M. and Giraud-Héraud, Y. and Giusarma, E. and Gjerløw, E. and González-Nuevo, J. and Górski, K. M. and Gratton, S. and Gregorio, A. and Gruppuso, A. and Gudmundsson, J. E. and Hamann, J. and Hansen, F. K. and Hanson, D. and Harrison, D. L. and Helou, G. and Henrot-Versillé, S. and Hernández-Monteagudo, C. and Herranz, D. and Hildebrandt, S. R. and Hivon, E. and Hobson, M. and Holmes, W. A. and Hornstrup, A. and Hovest, W. and Huang, Z. and Huffenberger, K. M. and Hurier, G. and Jaffe, A. H. and Jaffe, T. R. and Jones, W. C. and Juvela, M. and Keihänen, E. and Keskitalo, R. and Kisner, T. S. and Kneissl, R. and Knoche, J. and Knox, L. and Kunz, M. and Kurki-Suonio, H. and Lagache, G. and Lähteenmäki, A. and Lamarre, J.-M. and Lasenby, A. and Lattanzi, M. and Lawrence, C. R. and Leahy, J. P. and Leonardi, R. and Lesgourgues, J. and Levrier, F. and Lewis, A. and Liguori, M. and Lilje, P. B. and Linden-Vørnle, M. and López-Caniego, M. and Lubin, P. M. and Macías-Pérez, J. F. and Maggio, G. and Maino, D. and Mandolesi, N. and Mangilli, A. and Marchini, A. and Maris, M. and Martin, P. G. and Martinelli, M. and Martínez-González, E. and Masi, S. and Matarrese, S. and McGehee, P. and Meinhold, P. R. and Melchiorri, A. and Melin, J.-B. and Mendes, L. and Mennella, A. and Migliaccio, M. and Millea, M. and Mitra, S. and Miville-Deschênes, M.-A. and Moneti, A. and Montier, L. and Morgante, G. and Mortlock, D. and Moss, A. and Munshi, D. and Murphy, J. A. and Naselsky, P. and Nati, F. and Natoli, P. and Netterfield, C. B. and Nørgaard-Nielsen, H. U. and Noviello, F. and Novikov, D. and Novikov, I. and Oxborrow, C. A. and Paci, F. and Pagano, L. and Pajot, F. and Paladini, R. and Paoletti, D. and Partridge, B. and Pasian, F. and Patanchon, G. and Pearson, T. J. and Perdereau, O. and Perotto, L. and Perrotta, F. and Pettorino, V. and Piacentini, F. and Piat, M. and Pierpaoli, E. and Pietrobon, D. and Plaszczynski, S. and Pointecouteau, E. and Polenta, G. and Popa, L. and Pratt, G. W. and Prézeau, G. and Prunet, S. and Puget, J.-L. and Rachen, J. P. and Reach, W. T. and Rebolo, R. and Reinecke, M. and Remazeilles, M. and Renault, C. and Renzi, A. and Ristorcelli, I. and Rocha, G. and Rosset, C. and Rossetti, M. and Roudier, G. and Rouillé d’Orfeuil, B. and Rowan-Robinson, M. and Rubiño-Martín, J. A. and Rusholme, B. and Said, N. and Salvatelli, V. and Salvati, L. and Sandri, M. and Santos, D. and Savelainen, M. and Savini, G. and Scott, D. and Seiffert, M. D. and Serra, P. and Shellard, E. P. S. and Spencer, L. D. and Spinelli, M. and Stolyarov, V. and Stompor, R. and Sudiwala, R. and Sunyaev, R. and Sutton, D. and Suur-Uski, A.-S. and Sygnet, J.-F. and Tauber, J. A. and Terenzi, L. and Toffolatti, L. and Tomasi, M. and Tristram, M. and Trombetti, T. and Tucci, M. and Tuovinen, J. and Türler, M. and Umana, G. and Valenziano, L. and Valiviita, J. and Van Tent, F. and Vielva, P. and Villa, F. and Wade, L. A. and Wandelt, B. D. and Wehus, I. K. and White, M. and White, S. D. M. and Wilkinson, A. and Yvon, D. and Zacchei, A. and Zonca, A.},
	date = {2016},
	note = {00024}
}
```


## Error message in overleaf for Exported Items.bib file:
```
Warning--empty year in planck_collaboration_planck_2016
"ArXiv e-prints" is a string literal, `journal' is a missing field
---they aren't the same literal types for entry planck_collaboration_planck_2016
while executing---line 1822 of file mnras.bst
`journal' is a missing field, not a string, for entry planck_collaboration_planck_2016
while executing---line 1822 of file mnras.bst
"ArXiv e-prints" is a string literal, `journal' is a missing field
---they aren't the same literal types for entry planck_collaboration_planck_2016
while executing---line 1822 of file mnras.bst
```

If I change `journaltitle` to `journal` it does not work.  
If we change of journal, it does not work.

Simply use ADS NASA for reference manager, it is the best.
