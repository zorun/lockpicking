
DATE:=$(shell date +%Y%m%d)

TRALICS=tralics
XSLTPROC=xsltproc

XSLT=lockpicking.xsl

ZIPFILE=lockpicking-$(DATE).zip
HTMLZIPFILE=lockpicking-html-$(DATE).zip

lockpicking.pdf:
	# That's right, 3 times (to get references right)
	pdflatex lockpicking.tex && rm lockpicking.pdf && pdflatex lockpicking.tex && rm lockpicking.pdf && pdflatex lockpicking.tex

$(ZIPFILE): lockpicking.pdf
	# TODO: avoid zipbomb
	zip $(ZIPFILE) lockpicking.tex lockpicking.pdf README.markdown images/*

$(HTMLZIPFILE): lockpicking.html
	zip $(HTMLZIPFILE) lockpicking.html tralics.css images/*

lockpicking.xml:
	# latexml --noparse --inputencoding=utf8 --destination=lockpicking.xml lockpicking.tex
	$(TRALICS) -utf8 -utf8output -default_class=report -config=/home/zorun/AUR/tralics/src/tralics-2.14.4/confdir/report.clt lockpicking.tex

lockpicking.html: lockpicking.xml
	#mkdir -p html
	#latexmlpost --format=xhtml --novalidate --destination=html/lockpicking.html lockpicking.xml
	$(XSLTPROC) -o lockpicking.html $(XSLT) lockpicking.xml

xhtml: lockpicking.html

zip: $(ZIPFILE)
zip-html: $(HTMLZIPFILE)

clean:
	# rm -rf html/
	rm -f lockpicking.{xml,log,dvi,out,pdf,tox,aux,zip,img,toc,html}
	rm -f lockpicking*.zip
