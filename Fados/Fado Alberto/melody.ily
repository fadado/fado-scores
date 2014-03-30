% Fado Alberto
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Melody
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Melody = \relative do' {
  %\partial 8 mi8 |
  s2 s4 s8 mi8
  \repeat volta 2 {
    \set Score.currentBarNumber = #1
    sol4 \times 2/3 { sol8 sol sol } sol4 \times 2/3 { sol8 sol fas } |
    sol8 fas8~ fas2 r8 fas8 |
    la4 \times 2/3 { la8 la la } la4 \times 2/3 { la8 la sol } |
    la8 sol~ sol2 r8 si |
    mi4 \times 2/3 { mi8 mi re } si8 sols4 si16 do |
    si32 do si16 la8~ la2 r8 la8 |
    re4 \times 2/3 { re8 re re } mi4 \times 2/3 { re8 do si } |
    la32 si la16 sol8~ sol2 r8 sol8 |
    do4 \times 2/3 { do8 do do } do4 \times 2/3 { si8 la sol } |
    sol8 fas~ fas2 r8 sol |
    fas4 \times 2/3 { sol8 la do } si4 \times 2/3 { la8 fas res }
  }
  \alternative {
    { mi4 r4 r2 }
    { mi4 r4 r2 \bar "|." }
  }
}

% Desired measures for line
Breaks = \notemode {
  s1
  \repeat volta 2 {
    s1 * 4 \break
    s1 * 4 \break
    s1 * 3
  }
  \alternative {
    { s1 }
    { s1 }
  }
}

% EOF
