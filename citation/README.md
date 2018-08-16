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

## Error message in overleaf for Exported Items.bib file:
```
`journal' is a missing field, not a string, for entry planck_collaboration_planck_2016
```

If I change `journaltitle` to `journal` it does not work.  
If we change of journal, it does not work.

Simply use ADS NASA for reference manager, it is the best.
