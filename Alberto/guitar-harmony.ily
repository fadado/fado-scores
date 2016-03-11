% Fado Alberto
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.19.36"
\language portugues

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Guitar arrangement harmony
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ⱵHarmony = \chordmode {
  \set chordChanges = ##t
  \skip 1
  \repeat volta 2 {
   fa2.:m reb4 do1:7 do1:7 fa1:m
   fa1:7 sib1:m mib1:7 lab1
   reb2. sol4:7.5- | do2.:7 sol4:dim7 | reb4:9 sol4:m7.5- do2:7 |
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
