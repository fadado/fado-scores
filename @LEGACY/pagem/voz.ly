% Fado Pagem
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "biblioteca/pagina.ily"

\include "musica/letra.ily"
\include "musica/melodia.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Versão para voz
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 18)

\score {
  \new Staff <<
    \Pauta
    \new Voice = "Voz" \with {		% melodia
      \consists "Ambitus_engraver"
    } {
      \Melodia
    }
    \new Lyrics \lyricsto "Voz" {	% letra
      %\override Lyrics . LyricSpace #'minimum-distance = #1.0
      \Letra
    }
  >>
  \layout {
    \context { \Lyrics
      fontSize = #-2
    }
    indent = 0.0\cm
  }
  %\midi { }
}

\markup { \Strofe }

% EOF
