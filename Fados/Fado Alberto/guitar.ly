% Fado Alberto
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.16.2"

\include "portugues.ly"

\include "page.ily"
\include "melody.ily"
\include "harmony.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Classical guitar score
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Bass = \relative do {
  s2 s8 si8 dos res |
  \repeat volta 2 {
    mi4 si mi, do' |
    si4 fas si la8 las |
    si4 fas la si |
    mi,8 mi' si sol mi si'[ sib la] |

    sols4 si sols mi |
    la4 mi'8 do la si do dos |
    re4 la fas mi8 fas |
    sol4 si sol la8 si |

    do4 sol do fas, |
    si4 la8 las si4 fas |
    do'4 fas,4 si fas8 si
  }
  \alternative {
    { mi,8 mi' si sol mi si'[ dos res] }
    { mi,4\arpeggio si'\arpeggio mi,2\arpeggio }
  }
}

Chords = \relative do {
  s1
  \repeat volta 2 {
      r8 <sol' si mi> r8 <sol si mi> r8 <sol si mi> r8 <mi sol do>
      r8 <res la' si> r8 <res la' si> r8 <res la' si> r4
      r8 <res la' si> r8 <res la' si> r8 <res la' si> r8 <res la' si> 
      r8 <sol si mi>8~ <sol si mi>4 <sol si mi>8 r8 r4

      r8 <mi si' re> r8 <mi si' re> r8 <mi si' re> r8 <re sols si>
      r8 <la' do mi>~ <la do mi>4 r2
      r8 <fas do' re> r8 <fas do' re> r8 <re la' do> r4
      r8 <re sol si> r8 <re sol si> r8 <sol si re> r4

      r8 <mi sol do> r8 <mi sol do> r8 <mi sol do> r8 <mi sib' do>
      r8 <res la' si>~ <res la' si>4 r8 <res la' si> r8 <mib la do>
      r8 <mi sib' re> r8 <mi la do> r8 <res la' si> r8 <res la' si>
  }
  \alternative {
    { r8 <sol si mi>8~ <sol si mi>4 <sol si mi>8 r8 r4 }
    {
      <si, mi sol si mi>4\arpeggio
      <res la' si fas'>4\arpeggio
      <si mi sol si mi>2\arpeggio\laissezVibrer
    }
  }
}

% Score

#(set-global-staff-size 18)

\header {
  instrument = "Viola"
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
      \HarmonyGuitar
    }
    % viola
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
      \remove "New_fingering_engraver"
    }
    \context { \ChordNames
      %\override ChordName #'font-size = #-3
    }
    indent = 0.0\cm
  }
  %\midi { }
}

% EOF
