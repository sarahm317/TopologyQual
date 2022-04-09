# Make file for annotated bibliography

# make all creates a pdf with all citations and the bibliography and removes all files except the pdf.

# make clean removes all auxiliary files

#TEXFILE=201Homework2.tex # rename to file's name
TEXFILE=TopologyQualSolutions

all:
	pdflatex ${TEXFILE}||true # latex compile no. 1
	pdflatex ${TEXFILE}||true # latex compile no. 2
	
	make clean # remove unneeded files

one:
	pdflatex ${TEXFILE}||true # latex compile no. 1
	make clean # remove unneeded files
	
clean:
	@rm -f \
	*.toc \
	*.out \
	*.dvi \
	*.log \
	*.ps \
	texput.log \
	*.aux \
