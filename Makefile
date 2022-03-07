# Make file for annotated bibliography

# make all creates a pdf with all citations and the bibliography and removes all files except the pdf.

# make clean removes all auxiliary files

#TEXFILE=201Homework2.tex # rename to file's name
TEXFILE=TopologyQualSolutions.tex # rename to file's name

.PHONY: dvi ps pdf clean

pdf: 	$(TEXFILE:.tex=.pdf)
ps: 	$(TEXFILE:.tex=.ps)
dvi: 	$(TEXFILE:.tex=.dvi)

all:
	latex ${TEXFILE:.tex=}||true # latex compile no. 1
	latex ${TEXFILE:.tex=}||true # latex compile no. 2
	
	dvips -t letter ${TEXFILE:.tex=.dvi} # create dvi formatted doc
	ps2pdf ${TEXFILE:.tex=.ps} # convert ps to pdf
	
	make clean # remove unneeded files
	
clean:
	@rm -f \
	$(TEXFILE:.tex=.aux) \
	$(TEXFILE:.tex=.log) \
	$(TEXFILE:.tex=.out) \
	$(TEXFILE:.tex=.dvi) \
	$(TEXFILE:.tex=.ps) \
	$(TEXFILE:.tex=.bbl) \
	$(TEXFILE:.tex=.blg) \
	$(TEXFILE:.tex=.bcf) \
	$(TEXFILE:.tex=.run.xml) \