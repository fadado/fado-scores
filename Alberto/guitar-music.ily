% Fado Alberto
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.19.36"
\language portugues

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Classical guitar music bass and chords
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
ⱵBass = \relative reb {
  do4 mi,8 sol do4 sol |
  reb'4 sol,4 do sol8 do |
  fa,8 fa' do lab fa do'8[ re mi] |
  \repeat volta 2 {
    fa4 do fa, reb' |
    do4 mi,8 sol do4 sib8 si |
    do4 sol mi sol |
    fa8 fa' do lab fa do'[ dob sib] |

    la4 do la fa |
    sib4 fa'8 reb sib do reb re |
    mib4 sib sol fa8 sol |
    lab4 do lab sib8 do |

    reb4 lab reb sol, |
    do4 mi,8 sol do4 sol |
    reb'4 sol,4 do sol8 do
  }
  \alternative {
    { fa,8 fa' do lab fa do'[ re mi] }
    { fa,4\arpeggio do'\arpeggio fa,2\arpeggio }
  }
}

ⱵChords = \relative reb {
  r8 <mi sib' do>~ <mi sib' do>4 r8 <mi sib' do> r8 <fab sib reb>
  r8 <fa dob' mib> r8 <fa sib reb> r8 <mi sib' do> r8 <mi sib' do>
  r8 <fa lab do fa>8~ <fa lab do fa>4 <lab do fa>8 r8 r4 
  \repeat volta 2 {
      r8 <lab do fa> r8 <lab do fa> r8 <lab do fa> r8 <fa lab reb>
      r8 <mi sib' do> r4  r8 <mi sib' do> r4
      r8 <mi sib' do> r8 <mi sib' do> r8 <mi sib' do> r8 <mi sib' do> 
      r8 <fa~ lab do fa>8~ <fa lab do fa>4 <lab do fa>8 r8 r4

      r8 <fa do' mib> r8 <fa do' mib> r8 <fa do' mib> r8 <mib la do>
      r8 <sib' reb fa>~ <fa sib reb fa>4 r2
      r8 <sol reb' mib> r8 <sol reb' mib> r8 <mib sib' reb> r4
      r8 <mib lab do> r8 <mib lab do> r8 <lab do mib> r4

      r8 <fa lab reb> r8 <fa lab reb> r8 <fa lab reb> r8 <fa si reb>
      r8 <mi sib' do>~ <mi sib' do>4 r8 <mi sib' do> r8 <fab sib reb>
      r8 <fa dob' mib> r8 <fa sib reb> r8 <mi sib' do> r8 <mi sib' do>
  }
  \alternative {
    { r8 <fa lab do fa>8~ <fa lab do fa>4 <lab do fa>8 r8 r4 }
    {
      <do, fa lab do fa>4\arpeggio
      <mi sib' do mi>4\arpeggio
      <do fa lab do fa>2\arpeggio\laissezVibrer
    }
  }
}

% EOF
