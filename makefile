default: all clean

all: resume.tex sidebar.tex
	pdflatex -jobname Resume resume.tex

clean:
	rm -rf Resume.aux
	rm -rf Resume.bcf
	rm -rf Resume.dvi
	rm -rf Resume.log
	rm -rf Resume.out
	rm -rf Resume.run.xml
	rm -rf q.log

purge: clean
	rm -rf Resume.pdf
	git clean -fX

publish: default
	cp Resume.pdf Galen_Guyer_Resume-`date +"%m_%d_%Y"`.pdf
