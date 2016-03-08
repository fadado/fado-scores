% Fado Alberto
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
  title = "Fado Alberto"
  composer = "Miguel Ramos"
  poet = "Sextilhas – Decassílabo"
  copyright = ##f
  tagline = ##f
}

Stave = {
  \clef treble
  \key fa \minor
  \numericTimeSignature
  \time 4/4
}

Tablature = {
  \clef tab
  \key fa \minor
  \numericTimeSignature
  \time 4/4
}

% EOF
