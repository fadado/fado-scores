% Fado Adiça
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.19.36"
\language portugues

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
  title = "Fado Adiça"
  composer = "Armando Augusto Freire"
  poet = "Quadras – Setessílabo"
  copyright = ##f
  tagline = ##f
}

MːStave = {
  \clef treble
  \key do \major
  \numericTimeSignature
  \time 4/4
}

MːTablature = {
  \clef tab
  \key do \major
  \numericTimeSignature
  \time 4/4
}

% EOF
