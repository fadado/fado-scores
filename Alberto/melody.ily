% Fado Alberto
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.19.36"
\language portugues

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Melody
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Melody = \relative reb' {
  %\partial 8 fa8 |
  s2 s4 s8 fa8
  \repeat volta 2 {
    \set Score.currentBarNumber = #1
    lab4 \times 2/3 { lab8 lab lab } lab4 \times 2/3 { lab8 lab sol } |
    lab8 sol8~ sol2 r8 sol8 |
    sib4 \times 2/3 { sib8 sib sib } sib4 \times 2/3 { sib8 sib lab } |
    sib8 lab~ lab2 r8 do |
    fa4 \times 2/3 { fa8 fa mib } do8 la4 do16 reb |
    do32 reb do16 sib8~ sib2 r8 sib8 |
    mib4 \times 2/3 { mib8 mib mib } fa4 \times 2/3 { mib8 reb do } |
    sib32 do sib16 lab8~ lab2 r8 lab8 |
    reb4 \times 2/3 { reb8 reb reb } reb4 \times 2/3 { do8 sib lab } |
    lab8 sol~ sol2 r8 lab |
    sol4 \times 2/3 { lab8 sib reb } do4 \times 2/3 { sib8 sol mi }
  }
  \alternative {
    { fa4 r4 r2 }
    { fa4 r4 r2 \bar "|." }
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
