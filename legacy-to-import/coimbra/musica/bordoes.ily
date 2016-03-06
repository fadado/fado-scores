% Coimbra é uma Lição
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bordões
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Bordoes = \relative do, {
  \partial 4 s4  % anacrusis

  % Menor
  % 1
  \repeat volta 2 {
    mi2 mi2
    mi2 mi2
    mi2 mi2
    mi2 mi2

    % 5
    mi2 mi2
    mi2\arpeggio sol2\arpeggio
    si2 res2
    fas,2 si2

    % 9
    res2 si2
    la2 sol2
    fas2 si2
  }
  \alternative {
    {
      do2 res2

      % 13
      la2 sol2
      fas2 si2
      mi,2 si'2
      mi,4\arpeggio si'4 sib4 la4
    }
    {
      \set Staff.voltaSpannerDuration = #(ly:make-moment 1 1)
      do2 res2
      la2 sol2
      fas2 si2
      % 20
      \key mi \major
      mi,2 si'2
      mi,4\arpeggio si' dos res
    }
  }

  % Maior
  % 1
  mi2 si2
  las1\arpeggio
  si2 res2
  fas,2 dos'2

  % 5
  si2 res2
  fas,2 si2
  mi,2 si'2
  mi,4\arpeggio si'4 dos4 res4

  %
  fas,2 si2
  mi,2 si'2
  mi,4\arpeggio si'4 dos4 res4

  %
  fas,2 si2
  mi,2 si'2
  r2 si2\arpeggio
  mi,1\arpeggio
}

% EOF
