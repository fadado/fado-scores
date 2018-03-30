% Fado Adiça
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.19.36"
\language portugues

\include "predefined-guitar-fretboards.ly"

\include "page.ily"
\include "melody.ily"
\include "guitar-music.ily"
\include "guitar-harmony.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Tablature score
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 16)

\header {
  instrument = "Guitar"
}

\score {
  \simultaneous {
    \new ChordNames {
      s1 * 3
      \MːHarmony
      %\italianChords \Harmony
    }
    \new FretBoards {
      s1 * 3
      \MːHarmony
    }
    \new TabStaff \with {
      %\consists "Volta_engraver"
    } {
      \MːTablature
      s1 * 3
      \transpose do' do {
	\MːMelody
      }
    }
    \new TabStaff \with {
      %\consists "Volta_engraver"
      \consists "Span_arpeggio_engraver"
    } <<
      \set Staff.connectArpeggios = ##t
      \MːTablature
      s1 * 3
      \new TabVoice {
	\voiceOne
	\MːChords
      }
      \new TabVoice {
	\voiceTwo
	\MːBass
      }
    >>
  }
  \layout {
    \context { \Score
      %\remove "Volta_engraver"
    }
    \context { \ChordNames
    }
    \tabFullNotation
    indent = 0.0\cm
  }
  %\midi { }
}

% EOF
