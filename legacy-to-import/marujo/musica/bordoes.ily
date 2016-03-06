% Fado Marujo
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bordões
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Bordoes = \relative do {
  s8 do8 lab sol
  \repeat volta 2 {
    \repeat volta 2 {
      fa4 do'
      fa, do'8 lab8
      sol4 do
      mi, fa8 fas
      sol4 do
      mi, sol8 do
      fa,4 do'
    }
    \alternative {
      {
	fa,8\noBeam\arpeggio %\breathe
	%do' re mi
	do' lab sol
      }
      {
	la4 do8 la
      }
    }
    sib4 fa
    sol <sib\6>
    lab fa
    do' lab8 fa
    sol4 do
    mi, sol8 do
    fa,4 do'
    la4 do8 la
    sib4 fa
    sol <sib\6>
    lab fa
    do' fa,8 do'
    reb4 lab8 sol
    do4 sol8 do 
  }
  \alternative {
    {
      fa,4 do'
      fa,8\noBeam\arpeggio %\breathe
      %do' re mi
      do' lab sol
    }
    {
      fa4\arpeggio do'\arpeggio fa,2\arpeggio\laissezVibrer
    }
  }
}

% EOF
