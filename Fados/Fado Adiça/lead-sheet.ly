% Fado Adiça
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.16.2"

\include "portugues.ly"

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
      \Harmony
    }
    \new Staff \with {
    } <<
      \Stave
      \new Voice \Breaks
      \new Voice {
	\Melody
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
