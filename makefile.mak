# Generic Makefile
#
# Joan Josep Ordinas Rosa <jordinas@gmail.com> 
#

# ʹ ʺ ˈ ˉ Ξ Ⱶ ᴖ ᴗ

.SILENT:
.PHONY: all clean build

########################################################################
# Macros
########################################################################

# Build targets
SCORES =	universal.pdf \
		lead-sheet.pdf \
		guitar.pdf \
		tablature-guitar.pdf \

# Options to lilypond
#   log levels: NONE, ERROR, WARNING, BASIC, PROGRESS, INFO, DEBUG
OPTIONS =	--define-default=no-point-and-click \
		--define-default=delete-intermediate-files \
		--define-default=relative-includes \
		--pdf \
		--loglevel=BASIC \

########################################################################
# Pattern rules
########################################################################

%.pdf: %.ly
	lilypond $(OPTIONS) $<

########################################################################
# Rules
########################################################################

all: $(SCORES)
	echo 'Bem feito!'

# Dependencies for each score

universal.pdf: ${@:pdf=ly} \
	page.ily

lead-sheet.pdf: ${@:pdf=ly} \
	page.ily \
	melody.ily \
	harmony.ily

guitar.pdf: ${@:pdf=ly} \
	page.ily \
	melody.ily \
	guitar-music.ily \
	guitar-harmony.ily

tablature-guitar.pdf: ${@:pdf=ly} \
	page.ily \
	melody.ily \
	guitar-music.ily \
	guitar-harmony.ily

########################################################################
# Utilities
########################################################################

clean:
	rm -f *.ps *.pdf *.log

build: clean all

# vim:noet:sw=8:ts=8:ai:syntax=make
