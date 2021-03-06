% Fado Alberto
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.19.36"
\language portugues

\include "page.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Universal key score
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Desired measures for line
MːBreaks = \notemode {
  \repeat volta 2 {
    s1 * 4 \break
    s1 * 4 \break
    s1 * 3
  }
  \alternative {
    { s1 }
    { s1 }
  }
}

% Strumming rhythms
MːStrumming = \relative do' {
  \repeat volta 2 {
    do4 do4 do4 do4 | do4 do4 do4 do4 | do4 do4 do4 do4 | do4 do4 do4 do4 |
    do4 do4 do4 do4 | do4 do4 do4 do4 | do4 do4 do4 do4 | do4 do4 do4 do4 |
    do4 do4 do4 do4 | do4 do4 do4 do4 | do4 do4 do4 do4 |
  }
  \alternative {
    { do4 r4 r2 }
    { do4 do4 do2 \bar "|." }
  }
}

% Pseudo lyrics
MːGuideʹA = \notemode {
  do1 do1 s1 do1
  do1 do1 do1 do1
  do1 do1 s1 do1
  do4 do4 do2
}

MːSymbolsʹA = \lyricmode {
  "i"  "V7"        "i"
  "I7" "iv" "VII7" "III"
  "VI" "V7"        "i"
                   "i" "V7" "i"
}

MːGuideʹB = \notemode {
  do2. do4 do1 s1 do1
  do1 do1 do2 do2 do1
  do2. do4 do2. do4 do4 do4 do2 do1
  do4 do4 do2
}

MːSymbolsʹB = \lyricmode {
  "i" "VI"   "V7"                         "i"
  "I7"       "iv" "VII7" "VII7b"          "III"
  "VI" "II%" "V7" "ii*7" "VI9" "ii%" "V7" "i"
                                          "i" "V7" "i"
}

% Score

#(set-global-staff-size 18)

\markup \vspace #2
\markup { \bold { Chord progression } }

\score {
  \simultaneous {
    \new Devnull = "guide" \MːGuideʹA
    \new Lyrics \with {
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1.2 . 1)
      }
      \lyricsto "guide" {
	\set fontSize = #-2
	\MːSymbolsʹA
    }
    \new RhythmicStaff <<
      \MːStave
      \new Voice \MːBreaks
      \new Voice \with {
	\consists Pitch_squash_engraver
      } {
	\improvisationOn
	\MːStrumming
      }
    >>
  }
  \layout {
    indent = 0.0\cm
  }
}

\markup { \bold { Variation } }

\score {
  \simultaneous {
    \new Devnull = "guide" \MːGuideʹB
    \new Lyrics \with {
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1.2 . 1)
      }
      \lyricsto "guide" {
	\set fontSize = #-2
	\MːSymbolsʹB
    }
    \new RhythmicStaff <<
      \MːStave
      \new Voice \MːBreaks
      \new Voice \with {
	\consists Pitch_squash_engraver
      } {
	\improvisationOn
	\MːStrumming
      }
    >>
  }
  \layout {
    indent = 0.0\cm
  }
}

% EOF
