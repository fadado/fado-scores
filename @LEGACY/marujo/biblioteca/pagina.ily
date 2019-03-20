% Fado Marujo
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Formato
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 20\mm
  left-margin = 20\mm
  line-width =  180\mm
  ragged-bottom = ##t
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cabeçallo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header {
  title = "O Marujo Português"
  subtitle = "Fado Marujo"
  composer = "Música de Artur Ribeiro"
  poet = "Poema de Linhares Barbosa"
  copyright = ##f
  tagline = ##f
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Pauta, Tablatura 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Pauta = {
  \clef treble
  \key fa \minor
  \numericTimeSignature
  \time 2/4
  \tempo 4 = 50
}

Tablatura = {
  \clef tab
  \key fa \minor
  \numericTimeSignature
  \time 2/4
  \tempo 4 = 50
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
