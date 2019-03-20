% Coimbra é uma Lição
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Formato
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 20\mm
  line-width =  180\mm
  ragged-bottom = ##t
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cabeçallo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header {
  title = "Coimbra é uma lição"
  composer = "Música de Raul Farrão"
  poet = "Poema de José Galhardo"
  copyright = ##f
  tagline = ##f
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Pauta, Tablatura 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Pauta = {
  \clef treble
  \key mi \minor
  \numericTimeSignature
  \time 2/2
  \tempo 2 = 50
}

Tablatura = {
  \clef tab
  \key mi \minor
  \numericTimeSignature
  \time 2/2
  \tempo 2 = 50
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Macros
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

DalSegno = {
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT  
  \once \override Score.RehearsalMark #'font-size = #-1
  \mark \markup { \italic \bold "D.S." }
}

% EOF
