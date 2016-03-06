% Coimbra é uma Lição
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "predefined-guitar-fretboards.ly"

\include "biblioteca/pagina.ily"

\include "musica/bordoes.ily"
\include "musica/contra.ily"
\include "musica/harmonia.ily"
\include "musica/melodia.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Versão para viola (tablatura)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 18)

\header {
  instrument = "Viola"
}

\score {
  \simultaneous {
    % acordes
    \new ChordNames {
      \italianChords \Trastos
    }
    %{
    \new FretBoards {
      \Trastos
    }
    %}
    % melodia
    \new TabStaff \with {
      \consists "Volta_engraver"
    } {
      \Tablatura
      \transpose do' do {
	%\stemUp
	\Melodia
      }
    }
    % viola
    \new TabStaff \with {
      \consists "Span_arpeggio_engraver"
    } <<
      \set Staff.connectArpeggios = ##t
      \Tablatura
      \new TabVoice {
	\voiceOne
	\Contra
      }
      \new TabVoice {
	\voiceTwo
	\Bordoes
      }
    >>
  }
  \layout {
    \context { \Score
      \remove "Volta_engraver"
    }
    \context { \ChordNames
      \override ChordName #'font-size = #-3
      %\override ChordName #'font-series = #'bold 
    }
    indent = 0.0\cm
  }
  %\midi { }
}

% EOF
