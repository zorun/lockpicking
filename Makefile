

lockpicking.pdf:
	pdflatex lockpicking.tex

lockpicking.zip: lockpicking.pdf
	# TODO: avoid zipbomb
	zip lockpicking.zip lockpicking.tex lockpicking.pdf images/*

lockpicking.xml:
	latexml --noparse --inputencoding=utf8 --destination=lockpicking.xml lockpicking.tex

xhtml: lockpicking.xml
	mkdir -p html
	latexmlpost --format=xhtml --novalidate --destination=html/lockpicking.html lockpicking.xml

zip: lockpicking.zip

clean:
	rm -rf html/
	rm -f lockpicking.{xml,log,dvi,out,pdf,tox,aux,zip,img,toc}
