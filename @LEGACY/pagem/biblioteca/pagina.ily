% Fado Pagem
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "portugues.ly"

\include "da-al.ily"

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
  title = "O Pagem"
  subtitle = "Fado Pagem"
  composer = "Música de Alfredo Marceneiro"
  poet = "Poema de Fernando Teles"
  copyright = ##f
  tagline = ##f
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Pauta, Tablatura 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Pauta = {
  \clef treble
  \key sol \minor
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 80
}

Tablatura = {
  \clef tab
  \key sol \minor
  \numericTimeSignature
  \time 4/4
  \tempo 4 = 80
}

% EOF
