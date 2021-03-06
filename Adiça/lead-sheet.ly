% Fado Adiça
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.19.36"
\language portugues

\include "page.ily"
\include "melody.ily"
\include "harmony.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lead sheet
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Score

#(set-global-staff-size 20)

\score {
  \simultaneous {
    \new ChordNames {
      \MːHarmony
    }
    \new Staff \with {
    } <<
      \MːStave
      \new Voice \MːBreaks
      \new Voice {
	\MːMelody
      }
    >>
  }
  \layout {
    \context { \Score
    }
    indent = 0.0\cm
  }
  %\midi { }
}

% EOF
