% Fado Marujo
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "biblioteca/pagina.ily"

\include "musica/analise.ily"
\include "musica/bordoes.ily"
\include "musica/contra.ily"
\include "musica/harmonia.ily"
\include "musica/melodia.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Versão para viola (pauta)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 18)

\header {
  instrument = "Viola"
}

\score {
  \new StaffGroup <<
    % melodia
    \new Staff {
      \new Voice {
	\Pauta
	\Melodia
      }
    }
    % acordes
    \new ChordNames {
      \Harmonia
    }
    % viola
    \new Staff \with {
      \consists "Span_arpeggio_engraver"
    } <<
      \set Staff.connectArpeggios = ##t
      \Pauta
      \clef "treble_8"
      \new Voice {
	\voiceOne
	\Contra
      }
      \new Voice {
	\voiceTwo
	\Bordoes
      }
    >>
    % analise
    \new Devnull = "guia" \Guia
    \new Lyrics \with {
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1.2 . 1)
      }
      \lyricsto "guia" {
	\set fontSize = #-2
	\Analise
    }
  >>
  \layout {
    \context { \Voice
      %\remove "Fingering_engraver"
      \remove "New_fingering_engraver"
    }
    \context { \ChordNames
      \override ChordName #'font-size = #-3
      %\override ChordName #'font-series = #'bold 
    }
    indent = 0.0\cm
  }
  %\midi { }
}

% EOF
