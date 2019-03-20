% Coimbra é uma Lição
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Contra o tempo para bordões
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Contra = \relative do {
  \partial 4 s4  % anacrusis

  % Menor
  % 1
  \repeat volta 2 {
    <sol'\4 si\3 mi\2>4 <sol\4 si\3 mi\2>2 <sol\4 si\3 mi\2>4 
    <sol\4 si\3 res>4 <sol\4 si\3 res>2 <sol\4 si\3 res>4
    <sol\4 si\3 re>4 <sol\4 si\3 re>2 <sol\4 si\3 re>4
    <sol\4 si\3 dos\2>4 <sol\4 si\3 dos\2>2 <sol\4 si\3 dos\2>4
    <sol\4 si\2 do\3>4 <sol\4 si\2 do\3>2 <sol\4 si\2 do\3>4
    <si, mi sol si mi>2\arpeggio <do mi sol do mi>\arpeggio
    r4 <la' si fas'> r4 <la si fas'>
    r4 <res, la' si> r4 <res la' si>
    r4 <la' do fas> r4 <res, la' si>
    r4 <mi la do> r4 <mi la do>
    r4 <res la' si> r4 <res la' si>
  }
  \alternative {
    {
      r4 <fas la res> r4 <la do fas>
      r4 <fas la do> r4 <fas la do>
      r4 <res la' si> r4 <res la' si>
      r4 <mi sol si> r4 <mi sol si>
      <si mi sol si mi>2\arpeggio\laissezVibrer r2
    }
    {
      \set Staff.voltaSpannerDuration = #(ly:make-moment 1 1)
      r4 <fas' la res> r4 <la do fas>
      r4 <fas la do> r4 <fas la do>
      r4 <res la' si> r4 <res la' si>
      r4 <mi sols si> r4 <mi sols si>
      <si mi sols si mi>2\arpeggio\laissezVibrer r2
    }
  }
  r4 <sols' si mi> r4 <sols si mi>
  <mi sol dos mi>1\arpeggio
  r4 <la si fas'> r4 <la si fas'>
  r4 <mi la dos> r4 <mi la dos>
  r4 <la si fas'> r4 <la si fas'>
  r4 <res, la' si> r4 <res la' si>
  r4 <mi sols si> r4 <mi sols si>
  <si mi sols si mi>2\arpeggio\laissezVibrer r2
  r4 <res la' si> r4 <res la' si>
  r4 <mi sols si> r4 <mi sols si>
  <si mi sols si mi>2\arpeggio\laissezVibrer r2
  r4 <res la' si> r4 <res la' si>
  r4 <mi sols si> r4 <mi sols si>
  r2 <res la' si fas'>\arpeggio
  <si mi sols si mi>1\arpeggio
}

% EOF
