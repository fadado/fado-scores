% Fado Marujo
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "biblioteca/pagina.ily"

\include "musica/harmonia.ily"
\include "musica/melodia.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Versão para "fake book"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%#(set-global-staff-size 20)

\score {
  \simultaneous {
    \new ChordNames {	% acordes
      \Harmonia
    }
    \new Staff \with {	% melodia
      \consists "Volta_engraver"
    } {
      \Pauta
      \new Voice {
	\Melodia
      }
    }
  }
  \layout {
    \context { \Score
      \remove "Volta_engraver"
    }
    indent = 0.0\cm
  }
  %\midi { }
}

% EOF
