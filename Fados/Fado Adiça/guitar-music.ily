% Fado Alberto
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.16.2"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Classical guitar music bass and chords
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
Bass = \relative do {
  s8 sol[ la si] |
  \repeat volta 2 {
    do4 mi | re la8 lab | sol4 si | do mi,8 sol |
    do4 mi | re la8 lab | sol4 si | do mi,8 sol |
    do4 sol | re' si8 la | sol4 si | do mi,8 sol |
    do4 sol | re' si8 la | sol4 sol |
  }
  \alternative {
    { do8\arpeggio sol[ la si] ] }
    { do4 sol\arpeggio do2\arpeggio }
  }
}

Chords = \relative do' {
  s2
  \repeat volta 2 {
    r8 <sol do mi> r8 <sol do sol'> | r8 <la re fa>~ <la re fa> r8 | r8 <sol si fa'> r8 <fa sol re'> | r8 <sol do mi>~ <sol do mi> r8 |
    r8 <sol do mi> r8 <sol do sol'> | r8 <la re fa>~ <la re fa> r8 | r8 <sol si fa'> r8 <fa sol re'> | r8 <sol do mi>~ <sol do mi> r8 |
    r8 <sol do mi> r8 <sol do mi>   | r8 <sol si fa'>~ <sol si fa'> r8 | r8 <sol si fa'> r8  <sol si fa'> | r8 <sol do mi>~ <sol do mi> r8 |
    r8 <sol do mi> r8 <sol do mi>   | r8 <sol si fa'>~ <sol si fa'> r8 | r8 <sol si fa'> r8 <sol si fa'> |
  }
  \alternative {
    { <sol do mi>8\arpeggio r8 r4 }
    {
      <sol do mi>4
      <si, re sol si fa'>4\arpeggio
      <mi sol do mi>2\arpeggio
    }
  }
}

% EOF
