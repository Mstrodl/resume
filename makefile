default: all clean

all: resume.tex sidebar.tex
	pdflatex -jobname Mary-Strodl-Resume resume.tex

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.bcf
	rm -f *.blg
	rm -f *.fdb_latexmk
	rm -f *.fls
	rm -f *.log
	rm -f *.out
	rm -f *.run.xml
	rm -f *.synctex.gz
	rm -f mary-strodl-resume.pdf
	rm -f resume.pdf

purge: clean
	rm -rf Mary-Strodl-Resume.pdf
	git clean -fX

publish:
	latexmk resume.tex -pdf -jobname=Mary_Strodl_Resume-`date +"%F_%H-%M-%S"`
	make clean
