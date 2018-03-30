% Fado Adiça
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.19.36"
\language portugues

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Basic harmony
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

MːHarmony = \chordmode {
  \set chordChanges = ##t
  s1
  \repeat volta 2 {
   do1 re1:m sol1:7 do1
   do1 re1:m sol1:7 do1
   do1 sol1:7 sol1:7 do1
   do1 sol1:7 sol1:7 
  }
  \alternative {
    { do1 }
    { 
      \set chordChanges = ##f
      do2 sol2:7 do1
    }
  }
}

% EOF
