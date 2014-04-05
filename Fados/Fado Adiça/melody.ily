% Fado Adiça
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Melody
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Melody = \relative do'' {
  s2
  \repeat volta 2 {
    \set Score.currentBarNumber = #1
    r8 mi16 mi mi re fa mi | re8 la4 r16 re | fa8. mi16 re8 si16 la | do8 sol4. |
    r8 mi'16 mi mi re fa mi | re8 la4 r16 re | fa8. mi16 re8 si16 la | do8 sol4. |
    r8 mi16 sol do mi do re | la8 sol4.     | r8 re'16 si sol la fa sol | mi8 sol4. |
    r8 mi16 sol do mi do re | la8 sol4 r16 sol  | re'8. si16 sol8 la16 si |
  }
  \alternative {
    { do4 r4 }
    { do4 r4 r2 \bar "|." }
  }
}

% Desired measures for line
Breaks = \notemode {
  s2
  \repeat volta 2 {
    s2 * 4 \break
    s2 * 4 \break
    s2 * 4 \break
    s2 * 3
  }
  \alternative {
    { s2 }
    { s2 s2 }
  }
}

% EOF
