% Fado Adiça
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.16.2"

\include "portugues.ly"

\include "page.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Universal key score
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Desired measures for line
Breaks = \notemode {
  \repeat volta 2 {
    s1 * 4 \break
    s1 * 4 \break
    s1 * 4 \break
    s1 * 3
  }
  \alternative {
    { s1 }
    { s1 s1 }
  }
}

% Strumming rhythms
Strumming = \relative do' {
  \repeat volta 2 {
    do4 do4 do4 do4 | do4 do4 do4 do4 | do4 do4 do4 do4 | do4 do4 do4 do4 |
    do4 do4 do4 do4 | do4 do4 do4 do4 | do4 do4 do4 do4 | do4 do4 do4 do4 |
    do4 do4 do4 do4 | do4 do4 do4 do4 | do4 do4 do4 do4 | do4 do4 do4 do4 |
    do4 do4 do4 do4 | do4 do4 do4 do4 | do4 do4 do4 do4 |
  }
  \alternative {
    { do2 r2 }
    { do2 do2 | do1 \bar "|." }
  }
}

% Pseudo lyrics
GuideA = \notemode {
  do1 do1 do1 do1
  do1 do1 do1 do1
  do1 do1 s1 do1
  do1 do1 s1 do1
  do2 do2 do1
}

SymbolsA = \lyricmode {
  \markup \typewriter \medium I
  \markup \typewriter \medium ii
  \markup \typewriter \medium V7
  \markup \typewriter \medium I

  \markup \typewriter \medium I
  \markup \typewriter \medium ii
  \markup \typewriter \medium V7
  \markup \typewriter \medium I

  \markup \typewriter \medium I
  \markup \typewriter \medium V7
  \markup \typewriter \medium I

  \markup \typewriter \medium I
  \markup \typewriter \medium V7
  \markup \typewriter \medium I

  \markup \typewriter \medium I
  \markup \typewriter \medium V7
  \markup \typewriter \medium I
}

% Score

#(set-global-staff-size 18)

%\markup \vspace #2

%\markup { \bold { Simple harmony } }

\score {
  \simultaneous {
    \new Devnull = "guide" \GuideA
    \new Lyrics \with {
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1.2 . 1)
      }
      \lyricsto "guide" {
	\set fontSize = #-2
	\SymbolsA
    }
    \new RhythmicStaff <<
      \Stave
      \new Voice \Breaks
      \new Voice \with {
	\consists Pitch_squash_engraver
      } {
	\improvisationOn
	\Strumming
      }
    >>
  }
  \layout {
    indent = 0.0\cm
  }
}

% EOF
