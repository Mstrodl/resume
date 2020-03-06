default: all clean

all: resume.tex sidebar.tex
	pdflatex -jobname Resume resume.tex

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

purge: clean
	rm -rf Resume.pdf
	git clean -fX

publish:
	latexmk resume.tex -pdf -jobname=Galen_Guyer_Resume-`date +"%F_%H-%M-%S"`
	make clean
