# Fado Adiça
#
# Joan Josep Ordinas Rosa <jordinas@gmail.com> 
#

.PHONY : all clean build

LILYPOND=lilypond -dno-point-and-click \
		  -ddelete-intermediate-files \
		  -drelative-includes

# lead-sheet.pdf guitar.pdf tablature.pdf
all:  universal.pdf
	@echo 'Bem feito!'

#lead-sheet.pdf: lead-sheet.ly page.ily melody.ily harmony.ily
#@$(LILYPOND) $<

#guitar.pdf: guitar.ly page.ily melody.ily guitar-music.ily guitar-harmony.ily
#@$(LILYPOND) $<

#tablature.pdf: tablature.ly page.ily melody.ily harmony.ily guitar-music.ily guitar-harmony.ily
#@$(LILYPOND) $<

universal.pdf: universal.ly page.ily
	@$(LILYPOND) $<

clean:
	@rm -f *.ps *.pdf *.log

build: clean all

# EOF
