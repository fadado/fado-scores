% Fado Marujo
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Melodia
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Melodia = \relative do' {
  % A
  s8 do4 fa16 sol % anacrusis
  \repeat volta 2 {
    \repeat volta 2 {
      \mark \markup { \musicglyph #"scripts.segno" }
      lab8 lab4.
      \times 2/3 { lab8 lab lab } \times 2/3 { lab do sib }
      lab8 sol4.
      \times 2/3 { sib8 sib sib } \times 2/3 { sib do reb  }
      \set Score.currentBarNumber = #5
      do8 sib4 sol16 fa
      mi8 fa4 sol16 lab
      sol8 fa4.
    }
    \alternative {
      { r8 do4 fa16 sol }	% anacrusis per A
      { r8 fa'8 fa mib }	% anacrusis per B
    }
    \set Score.currentBarNumber = #9

    % B
    reb8 sib4 sib16 reb
    fa8 mi sol fa
    do8 lab4 lab16 do
    fa8 mi sol fa
    mi8 do4 do16 reb
    do8 sol sib lab
    do4 do ~
    %
    do8 fa fa mib
    reb8 sib4 sib16 reb
    fa8 mi sol fa
    lab8. sol16 fa8 mib
    { reb do sib lab }
    reb sol,4 sib16 reb
    do8 sib sol mi
  }
  \alternative {
    {
      fa2
      % anacrusis per A
      r8 do4 fa16 sol
      \DalSegno
    }
    { % Fine
      %\set Score.voltaSpannerDuration = #(ly:make-moment 2 4)
      fa2
      R2
      \bar "|."
    }
  }
}

Breaks = \notemode {
  s2
  \repeat volta 2 {
    \repeat volta 2 {
      s2 * 4
      \break
      s2 * 3
    }
    \alternative {
      { s2 }
      { s2 }
    }
    \break

    s2 * 4 \break
    s2 * 4 \break
    s2 * 4 \break
    s2 * 2
  }
  \alternative {
    { s2 * 2 }
    { s2 * 2 }
  }
}

% EOF
