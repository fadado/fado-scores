# Fado Alberto
#
# Joan Josep Ordinas Rosa <jordinas@gmail.com> 
#

.PHONY : all clean build

LILYPOND=lilypond -dno-point-and-click \
		  -ddelete-intermediate-files \
		  -drelative-includes

all: lead-sheet.pdf guitar.pdf
	@echo 'Bem feito!'

lead-sheet.pdf: lead-sheet.ly page.ily melody.ily
	@$(LILYPOND) $<

guitar.pdf: guitar.ly page.ily melody.ily guitar-music.ily
	@$(LILYPOND) $<

clean:
	@rm -f *.ps *.pdf *.log

build: clean all

# EOF
