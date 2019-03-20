% Coimbra é uma Lição
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "english.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Analise
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Guia = \notemode {
  \partial 4 s4  % anacrusis

  % Menor
  a1 a1 a1 a1 a1 a2 a2 a1 s1
  a2 a2 a1 a1 a1 a1 a1 a1 s1
  a1 a1 a1 a1 s1 a1

  %Maior
  a1 a1 a1 a1 s1 a1 s1
  a1 a1 s1
  a1 a1 s2 a2 a1
}

Roman = #(define-music-function (parser location r) (string?)
  #{
    \markup { \typewriter \medium $r }
  #}
)

Analise = \lyricmode {
  % Minor 1
  \markup \typewriter \medium i
  \markup \typewriter \medium i^
  \markup \typewriter \medium i7
  \markup \typewriter \medium i6
  \markup \typewriter \medium i6m
  \markup \typewriter \medium i
  \markup \typewriter \medium VIc
  \markup \typewriter \medium V7
  \markup \typewriter \medium "#vii*"
  \markup \typewriter \medium V7
  \markup \typewriter \medium iv7
  \markup \typewriter \medium V7
  \markup \typewriter \medium "#vii*"
  \markup \typewriter \medium ii−b
  \markup \typewriter \medium V7
  \markup \typewriter \medium i
  \markup \typewriter \medium "#vii*"
  \markup \typewriter \medium ii−b
  \markup \typewriter \medium V7
  \markup \typewriter \medium I
  % Maior 1
  \markup \typewriter \medium I
  \markup \typewriter \medium "#iv*"
  \markup \typewriter \medium V7
  \markup \typewriter \medium ii7
  \markup \typewriter \medium V7
  \markup \typewriter \medium I
  %
  \markup \typewriter \medium V7
  \markup \typewriter \medium I
  \markup \typewriter \medium V7
  \markup \typewriter \medium I
  \markup \typewriter \medium V7
  \markup \typewriter \medium I
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

GuiaSimples = \notemode {
  \partial 4 s4  % anacrusis

  % Menor
  \repeat unfold 2 {
    a1 a1 a1 a1 a1 a2 a2 a1 s1
    s1 a1 a1 s1 s1 s1 a1 s1
  }

  %Maior
  \repeat unfold 2 {
    a1 a1 a1 a1 a1 s1 a1 s1
  }
  s2 a2 a1
}

AnaliseSimples = \lyricmode {
  % Minor 1
  \markup \typewriter \medium i
  \markup \typewriter \medium i^
  \markup \typewriter \medium i7
  \markup \typewriter \medium i6
  \markup \typewriter \medium i6m
  \markup \typewriter \medium i
  \markup \typewriter \medium VI
  \markup \typewriter \medium V7
  \markup \typewriter \medium iv
  \markup \typewriter \medium V7
  \markup \typewriter \medium i
  % Minor 2
  \markup \typewriter \medium i
  \markup \typewriter \medium i^
  \markup \typewriter \medium i7
  \markup \typewriter \medium i6
  \markup \typewriter \medium i6m
  \markup \typewriter \medium i
  \markup \typewriter \medium VI
  \markup \typewriter \medium V7
  \markup \typewriter \medium iv
  \markup \typewriter \medium V7
  \markup \typewriter \medium I
  % Maior 1
  \markup \typewriter \medium I
  \markup \typewriter \medium "#iv*"
  \markup \typewriter \medium V7
  \markup \typewriter \medium ii7
  \markup \typewriter \medium V7
  \markup \typewriter \medium I
  % Maior 2
  \markup \typewriter \medium I
  \markup \typewriter \medium "#iv*"
  \markup \typewriter \medium V7
  \markup \typewriter \medium ii7
  \markup \typewriter \medium V7
  \markup \typewriter \medium I
  %
  \markup \typewriter \medium V7
  \markup \typewriter \medium I
}

% − o ø

% EOF
