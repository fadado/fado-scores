% Fado Alberto
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.16.2"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Classical guitar music bass and chords
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
Bass = \relative do {
  s4 sol la si |
  \repeat volta 2 {
    do2 mi | re la4 lab | sol2 si | do mi,4 sol |
    do2 sol | re' si4 la | sol2 si | do mi,4 sol |
    do2 sol | re' si4 la | sol2 sol |
  }
  \alternative {
    { do4\arpeggio sol la si }
    { do2 sol\arpeggio do1\arpeggio }
  }
}

Chords = \relative do' {
  s1
  \repeat volta 2 {
    r4 <sol do mi> r4 <sol do sol'> | r4 <la re fa>~ <la re fa> r4 | r4 <sol si fa'> r4 <fa sol re'> | r4 <sol do mi>~ <sol do mi> r4 |
    r4 <sol do mi> r4 <sol do mi>   | r4 <sol si fa'>~ <sol si fa'> r4 | r4 <sol si fa'> r4  <sol si fa'> | r4 <sol do mi>~ <sol do mi> r4 |
    r4 <sol do mi> r4 <sol do mi>   | r4 <sol si fa'>~ <sol si fa'> r4 | r4 <sol si fa'> r4 <sol si fa'> |
  }
  \alternative {
    { <sol do mi>4\arpeggio r4 r2 }
    {
      <sol do mi>2
      <si, re sol si fa'>2\arpeggio
      <mi sol do mi>1\arpeggio
    }
  }
}

% EOF
