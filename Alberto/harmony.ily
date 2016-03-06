% Fado Alberto
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.16.2"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Basic harmony
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Harmony = \chordmode {
  \set chordChanges = ##t
  \skip 1
  \repeat volta 2 {
   fa1:m do1:7 do1:7 fa1:m
   fa1:7 sib1:m mib1:7 lab1
   reb1 do1:7 do1:7
  }
  \alternative {
    { fa1:m }
    { 
      \set chordChanges = ##f
      fa4:m do4:7 fa2:m
    }
  }
}

% EOF
