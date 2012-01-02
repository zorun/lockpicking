A lockpicking guide?
====================

This project is an attempt at rewriting a [lockpicking guide French translation]() in LaTeX. The original (English) is [here](). The French translation was mostly okay (though we had some corrections to make), but the format (HTML) wasn't great, so we couldn't help starting a LaTeX version.

Make sure to visit the [project page](https://github.com/skhaen/lockpicking) on github; you can download a nice PDF version or a not-so-pretty HTML version (obtained from the LaTeX version using [tralics](http://www-sop.inria.fr/miaou/tralics/)) [here](https://github.com/skhaen/lockpicking/downloads)

Compiling
=========

To PDF
------

Use `make` to build `lockpicking.pdf`.

To XHTML
--------

**Note:** exporting to XHTML is non-obvious (and doesn't work very well, see the **TODO** section below). You probably don't need to generate that yourself, see the download page on Github.

To export to XHTML, you first need [tralics](http://www-sop.inria.fr/miaou/tralics/) (to translate to XML) and [xsltproc](http://xmlsoft.org/XSLT/xsltproc2.html) (to generate XHTML output from the XML, according to a XSLT stylesheet).
Then, uncomment 

    \toplevelsection{\chapter}

in `lockpicking.tex`; otherwise chapters and sections translate to the same thing in the XML output. TODO: find a better way, because this command is tralics-specific (LaTeX doesn't know about it, that's why it's commented out).

You should now be able to use `make xhtml`. If `tralics` is not in your path, you can use something like `make TRALICS=/home/foo/tralics-42.42/src/tralics xhtml`.

The following files are used by the html file:

    lockpicking.html
    tralics.css
    images/

zipfile
-------

Use `make zip` to zip the pdf && the sources, and `make zip-html` to zip the html output.

TODO
====

Mostly stuff related to the XHTML export:

* Find a better fix for the chapter/section export to XML (both of them translate to <div0>)
* All figures are "Figure 0."
* All `\ref` don't translate quite well to XHTML (they translate to empty links like `<a href="#anchor"></a>`)
* Write a proper XSLT stylesheet (the current one is a big hack heavily inspired from styles bundled with `tralics`).

Maybe the simpliest way would be to stop using `tralics` :) But there's not a lot of usable LaTeX to XHTML translator out there.
