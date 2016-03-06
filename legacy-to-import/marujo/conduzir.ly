% Fado Marujo
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "biblioteca/pagina.ily"

\include "musica/analise.ily"
\include "musica/harmonia.ily"
\include "musica/letra.ily"
\include "musica/melodia.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Versão para conduzir
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%#(set-global-staff-size 20)

\score {
  \simultaneous {
    \new ChordNames {			% acordes
      \italianChords \Harmonia
    }
    % analise
    %%{
    \new Devnull = "guia" \Guia
    \new Lyrics \with {
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1.2 . 1)
      }
      \lyricsto "guia" {
	\set fontSize = #-2
	\Analise
    }
    %%}
    \new Staff \with {			% melodia
      \consists "Volta_engraver"
    } <<
      \Pauta
      \new Voice = "Voz" \with {	% melodia
	\consists "Ambitus_engraver"
      } {
	\Melodia
      }
      \new Voice \Breaks
      \new Lyrics \lyricsto "Voz" {	% letra
	\set stanza = #"1. "
	\LetraI
      }
      \new Lyrics \lyricsto "Voz" {
	\LetraII
      }
    >>
  }
  \layout {
    \context { \Score
      \remove "Volta_engraver"
    }
    \context { \ChordNames
      \override ChordName #'font-size = #-2
    }
    \context { \Lyrics
      fontSize = #-2
    }
    indent = 0.0\cm
  }
  %\midi { }
}

\markup { \StrofeI }
\markup { \StrofeII }

% EOF
