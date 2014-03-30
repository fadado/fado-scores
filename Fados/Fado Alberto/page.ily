% Fado Alberto
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.16.2"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Page setup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\paper {
  #(set-paper-size "a4")
  top-margin = 25\mm
  bottom-margin = 20\mm
  left-margin = 20\mm
  line-width =  170\mm
  ragged-bottom = ##t
}

\header {
  title = "Fado Alberto"
  composer = "Fado tradicional"
  copyright = ##f
  tagline = ##f
}

Stave = {
  \clef treble
  \key mi \minor
  \numericTimeSignature
  \time 4/4
}

Tablature = {
  \clef tab
  \key mi \minor
  \numericTimeSignature
  \time 4/4
}

% Macros

DalSegno = {
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT  
  \once \override Score.RehearsalMark #'font-size = #-1
  \mark \markup { \italic \bold "D.S." }
}

% EOF
