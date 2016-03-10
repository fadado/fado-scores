% Fado Adiça
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.16.2"

\include "page.ily"
\include "melody.ily"
\include "guitar-music.ily"
\include "guitar-harmony.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Classical guitar score
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 18)

\header {
  instrument = "Guitar"
}

\score {
  \new StaffGroup <<
    \new Staff {
      \new Voice {
	\Stave
	s1 * 3
	\ⱵMelody
      }
    }
    \new ChordNames {
      s1 * 3
      \ⱵHarmony
    }
    \new Staff \with {
      \consists "Span_arpeggio_engraver"
    } <<
      \set Staff.connectArpeggios = ##t
      \Stave
      \clef "treble_8"
      \new Voice {
	\voiceOne
	\ⱵChords
      }
      \new Voice {
	\voiceTwo
	\ⱵBass
      }
    >>
  >>
  \layout {
    \context { \Voice
      %\remove "Fingering_engraver"
      %\remove "New_fingering_engraver"
    }
    \context { \ChordNames
      %\override ChordName #'font-size = #-3
    }
    indent = 0.0\cm
  }
  %\midi { }
}

% EOF
