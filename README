Use `make` to build the pdf, and `make zip` to zip the pdf && the sources.

To export to XHTML, you first need [tralics](http://www-sop.inria.fr/miaou/tralics/) (to translate to XML) and [xsltproc](http://xmlsoft.org/XSLT/xsltproc2.html) (to generate XHTML output from the XML, according to a XSLT stylesheet).
Then, uncomment 
    \toplevelsection{\chapter}
in `lockpicking.tex`; otherwise chapters and sections translate to the same thing in the XML output. TODO: find a better way, because this command is tralics-specific (LaTeX doesn't know about it, that's why it's commented out).
You should now be able to use `make xhtml`. If `tralics` is not in your path, you can use something like `make TRALICS=/home/foo/tralics-42.42/src/tralics xhtml`.

The following files are used by the html file:
    lockpicking.html
    tralics.css
    images/

