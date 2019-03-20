% Fado Pagem
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "biblioteca/pagina.ily"

\include "musica/harmonia.ily"
\include "musica/melodia.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Versão para "fake book"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 18)

\score {
  \simultaneous {
    \new ChordNames {	% acordes
      \Harmonia
    }
    \new Staff <<	% melodia
      \Pauta
      \new Voice {
	\Melodia
      }
    >>
  }
  \layout {
    indent = 0.0\cm
  }
  %\midi { }
}

% EOF
