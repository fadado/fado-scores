% Fado Marujo
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Harmonia
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Harmonia = \chordmode {
  \set chordChanges = ##t
  \skip 2
  \repeat volta 2 {
    \repeat volta 2 {
      fa2:m fa2:m do2:7 do2:7 do2:7 do2:7 fa2:m
    }
    \alternative {
      { fa2:m }
      { fa2:7 }
    }
    sib2:m sol2:m7.5- fa2:m fa2:m do2:7 s2 fa2:m fa2:7
    sib2:m sol2:m7.5- fa2:m fa2:m reb4. sol8:m7.5- do2:7
  }
  \alternative {
    { fa2:m fa2:m }
    { 
      \set chordChanges = ##f
      fa4:m do4:7 fa2:m
    }
  }
}

Trastos = \chordmode {
  \skip 2
  \repeat volta 2 {
    \repeat volta 2 {
      fa2:m s2 do2:7 s2 s2 s2 fa2:m
    }
    \alternative {
      { s2 }
      { fa2:7 }
    }
    sib2:m sol2:m7.5- fa2:m s2 do2:7 s2 fa2:m fa2:7
    sib2:m sol2:m7.5- fa2:m s2 reb4. sol8:m7.5- do2:7
  }
  \alternative {
    { fa2:m s2 }
    { fa4:m do4:7 fa2:m }
  }
}

% EOF
