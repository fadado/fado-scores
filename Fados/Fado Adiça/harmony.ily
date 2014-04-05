% Fado Adiça
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.16.2"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Basic harmony
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Harmony = \chordmode {
  \set chordChanges = ##t
  s2
  \repeat volta 2 {
   do2 re2:m sol2:7 do2
   do2 sol2:7 sol2:7 do2
   do2 sol2:7 sol2:7 do2
   do2 sol2:7 sol2:7 
  }
  \alternative {
    { do2 }
    { 
      \set chordChanges = ##f
      do4 sol4:7 do2
    }
  }
}

% EOF
