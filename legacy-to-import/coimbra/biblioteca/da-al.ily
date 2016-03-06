% Macros
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

AlCoda = {
  % the align part
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT  
  %\override Score.RehearsalMark #'direction = #DOWN
  \once \override Score.RehearsalMark #'font-size = #-1
  \mark \markup { 
    \italic \bold "Al Coda  "
    \upright \raise #1 \musicglyph #"scripts.coda"
  }
}

DCalCoda = {
  % the align part
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT  
  %\override Score.RehearsalMark #'direction = #DOWN
  \once \override Score.RehearsalMark #'font-size = #-1
  %\mark \markup { \italic \bold "D.C. al  Coda" }
  \mark \markup { \italic \bold "D.C. al  " 
    \upright \raise #1 \musicglyph #"scripts.coda"
  }
}

% EOF
