% Fado Adiça
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Melody
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Melody = \relative do'' {
  s1
  \repeat volta 2 {
    \set Score.currentBarNumber = #1
    r4 mi8 mi mi re fa mi | re4 la2 r8 re | fa4. mi8 re4 si8 la | do4 sol2 r4 |
    r4 mi'8 mi mi re fa mi | re4 la2 r8 re | fa4. mi8 re4 si8 la | do4 sol2 r8 mi |
    sol4 do8 mi~ mi4 do8 re | la4 sol2 r8 re' | si4 sol8 la~ la4 fa8 sol | mi4 sol2 s8 mi |
    sol4 do8 mi~ mi4 do8 re | la4 sol2 r8 sol  | re'4. si8 sol4 la8 si |
  }
  \alternative {
    { do2 r2 }
    { do2 r2 r1 \bar "|." }
  }
}

% Desired measures for line
Breaks = \notemode {
  s1
  \repeat volta 2 {
    s1 * 4 \break
    s1 * 4 \break
    s1 * 4 \break
    s1 * 3
  }
  \alternative {
    { s1 }
    { s1 s1 }
  }
}

% EOF
