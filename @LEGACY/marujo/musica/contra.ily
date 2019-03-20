% Fado Marujo
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Contra o tempo para bordões
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Contra = \relative do {
  s2
  \repeat volta 2 {
    \repeat volta 2 {
      r8 <lab' do fa> r8 <lab do fa>
      r8 <lab do fa>  r4
      r8 <mi sib' do> r8 <mi sib' do>
      r8 <mi sib' do> r4
      r8 <mi sib' do> r8 <mi sib' do>
      r8 <mi sib' do> r8 <mi sib' do>
      r8 <fa lab do>  r8 <fa lab do>
    }
    \alternative {
      {
	<do fa lab do fa>8\arpeggio r8 r4
      }
      {
	r8 <fa la mib'> r8 <fa la mib'>
      }
    }
    r8 <fa sib reb>  r8 <fa sib reb>
    r8 <fa sib reb>  r8 <sol\4 reb'\3 fa\2>
    r8 <fa\4 do'\3 fa\2>   r8 <fa lab do>
    r8 <fa lab do>   r4
    r8 <mi sib' do>  r8 <mi sib' do>
    r8 <mi sib' do>  r8 <mi sib' do>
    r8 <fa lab do>   r8 <fa lab do>
    r8 <fa la mib'>  r8 <fa la mib'>
    r8 <fa sib reb>  r8 <fa sib reb>
    r8 <fa sib reb>  r8 <sol\4 reb'\3 fa\2>
    r8 <fa\4 do'\3 fa\2>   r8 <fa lab do>
    r8 <fa lab do>   r8 <fa lab do>
    r8 <fa lab reb>4    <fa sib reb>8
    r8 <mi sib' do>  r8 <mi sib' do>
  }
  \alternative {
    {
      r8 <fa lab do> r8 <fa lab do>
      <do fa lab do fa>8\arpeggio r8 r4
    }
    {
      <do fa lab do fa>4\arpeggio
      <mi sib' do mi>4\arpeggio
      <do fa lab do fa>2\arpeggio\laissezVibrer
    }
  }
}

% EOF
