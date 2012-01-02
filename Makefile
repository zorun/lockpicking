
TRALICS=tralics
XSLTPROC=xsltproc

XSLT=lockpicking.xsl

lockpicking.pdf:
	# That's right, 3 times (to get references right)
	pdflatex lockpicking.tex && rm lockpicking.pdf && pdflatex lockpicking.tex && rm lockpicking.pdf && pdflatex lockpicking.tex

lockpicking.zip: lockpicking.pdf
	# TODO: avoid zipbomb
	zip lockpicking.zip lockpicking.tex lockpicking.pdf images/*

lockpicking.xml:
	# latexml --noparse --inputencoding=utf8 --destination=lockpicking.xml lockpicking.tex
	$(TRALICS) -utf8 -utf8output -default_class=report -config=/home/zorun/AUR/tralics/src/tralics-2.14.4/confdir/report.clt lockpicking.tex

xhtml: lockpicking.xml
	#mkdir -p html
	#latexmlpost --format=xhtml --novalidate --destination=html/lockpicking.html lockpicking.xml
	$(XSLTPROC) -o lockpicking.html $(XSLT) lockpicking.xml

zip: lockpicking.zip

clean:
	rm -rf html/
	rm -f lockpicking.{xml,log,dvi,out,pdf,tox,aux,zip,img,toc}
