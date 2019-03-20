% Fado Pagem
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Melodia
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Melodia = \relative do'' {
% A 1
  r4 re8. re16 re8 re do16 re8.
  fa4 mib2 r4
  r4 mib8 mib mib mib mib re
  mib4 re2 r4

  r8 re8 re mib re re do16 re8.~
  re8 do~ do2 r4
  r4 do8. do16 do8 do do fa
  mib4 re2 r4
  \AlCoda
  \bar "||"

% A 2
  r4 re8. re16 re8 re do16 re8.
  fa4 mib2 r4
  r4 do8 sib la sib do16 fa8.
  mib4\( re2\) r4

  r4 re8 mib re re re do
  re4 do2 r4
  r8 la do sib la4  sol8 fas
  sol2 r2

% B 1
  r4 re'8 sib re8. sib16 re sib8 la16~
  la4 sol2 r4
  r8. re'16 re8 re re4 re16 sib8 la16~
  la2 r2

  r4 re re8[ fa] fa fa16 mib
  fa4 re2 r4
  r8. re16 re8 re r8 la\noBeam la re~
  re8 re16( do sib2) r4

% B 2
  r4 re8 dos16 re dos!8 re4 sib8
  la4 sol2 r4
  r4 re'16 re sol8~ sol8 fa mib re
  fa4 mib2 r4

  r4 do8. re16 fa8. mib16 re8 do
  do8 sib4 sib16 do mib8. re16 do8 sib16 la~
  la8 la r la16 sib re8 do16 la16~ la8 fas
  sol4 sol2 r4
  \DCalCoda
  \bar ":|"

% CODA
  r4\coda
  re' fa8 mib8~ mib16 fa8 mib16
  re8 do4.  r2
  r8 do re16 fa8.~ fa8 mib re do
  do8 sib4. r8 re(\noBeam mib) re

  re16( do) sib8~ sib r8 r mib4 re8
  do4 la r2
  r4 la8. sib16 re8 re do fas,
  sol8 sol4. r2
  R1
  \bar "|."

}

% EOF
