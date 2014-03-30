% Fado Alberto
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.16.2"

\include "portugues.ly"

\include "page.ily"
\include "melody.ily"
\include "guitar-music.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Universal key score
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
	\Melody
      }
    }
    \new ChordNames {
      \Harmony
    }
    \new Staff \with {
      \consists "Span_arpeggio_engraver"
    } <<
      \set Staff.connectArpeggios = ##t
      \Stave
      \clef "treble_8"
      \new Voice {
	\voiceOne
	\Chords
      }
      \new Voice {
	\voiceTwo
	\Bass
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
