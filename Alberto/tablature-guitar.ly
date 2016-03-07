% Fado Alberto
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.16.2"

\include "portugues.ly"
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
	s1 * 2
      \Harmony
      %\italianChords \Harmony
    }
    \new FretBoards {
	s1 * 2
      \Harmony
    }
    \new TabStaff \with {
      %\consists "Volta_engraver"
    } {
      \Tablature
	s1 * 2
      \transpose do' do {
	\Melody
      }
    }
    \new TabStaff \with {
      %\consists "Volta_engraver"
      \consists "Span_arpeggio_engraver"
    } <<
      \set Staff.connectArpeggios = ##t
      \Tablature
	s1 * 2
      \new TabVoice {
	\voiceOne
	\Chords
      }
      \new TabVoice {
	\voiceTwo
	\Bass
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
