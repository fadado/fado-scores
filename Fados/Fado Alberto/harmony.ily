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
   mi1:m si1:7 si1:7 mi1:m
   mi1:7 la1:m re1:7 sol1
   do1 si1:7 si1:7
  }
  \alternative {
    { mi1:m }
    { 
      \set chordChanges = ##f
      mi4:m si4:7 mi2:m
    }
  }
}

% EOF
