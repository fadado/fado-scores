% Fado Pagem
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Harmonia
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Harmonia = \chordmode {
  \set chordChanges = ##t
  % A
  sol1:m do:m do:m sol:m sol:m re:7 re:7 sol:m
  sol:m do:m do:m sol:m sol:m re:7 re:7 sol:m

  % B
  sol:m sol:m sol:m re:7 re:7 re:7 re:7 sol:m
  sol2:m re:7 sol1:m sol:m do:m do:m sol:m re:7 sol:m

  % CODA
  sol:m do:m do:m sol:m sol:m re:7 re:7 sol2:m re:7 sol1:m
}

Trastos = \chordmode {
  % A
  sol1:m do:m s1 sol:m s1 re:7 s1 sol:m
  sol:m do:m s1 sol:m s1 re:7 s1 sol:m

  % B
  sol:m s1 s1 re:7 s1 s1 s1 sol:m
  sol2:m re:7 sol1:m s1 do:m s1 sol:m re:7 sol:m

  % CODA
  sol:m do:m s1 sol:m s1 re:7 s1 sol2:m re:7 sol1:m
}

% EOF
