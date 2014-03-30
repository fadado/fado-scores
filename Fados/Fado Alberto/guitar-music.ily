% Fado Alberto
% Engraved by Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.16.2"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Classical guitar music (used for staff and tablature versions)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
Harmony = \chordmode {
  \set chordChanges = ##t
  \skip 1
  \repeat volta 2 {
   mi2:m mi4:m do4 si1:7 si1:7 mi1:m
   mi1:7 la1:m re1:7 sol1
   do2 do4 fas4:7.5- | si2:7 si4:7 fas4:dim7 | do4:9 fas4:m7.5- si2:7 |
  }
  \alternative {
    { mi1:m }
    { 
      \set chordChanges = ##f
      mi4:m si4:7 mi2:m
    }
  }
}

Bass = \relative do {
  s2 s8 si8 dos res |
  \repeat volta 2 {
    mi4 si mi, do' |
    si4 fas si la8 las |
    si4 fas la si |
    mi,8 mi' si sol mi si'[ sib la] |

    sols4 si sols mi |
    la4 mi'8 do la si do dos |
    re4 la fas mi8 fas |
    sol4 si sol la8 si |

    do4 sol do fas, |
    si4 la8 las si4 fas |
    do'4 fas,4 si fas8 si
  }
  \alternative {
    { mi,8 mi' si sol mi si'[ dos res] }
    { mi,4\arpeggio si'\arpeggio mi,2\arpeggio }
  }
}

Chords = \relative do {
  s1
  \repeat volta 2 {
      r8 <sol' si mi> r8 <sol si mi> r8 <sol si mi> r8 <mi sol do>
      r8 <res la' si> r8 <res la' si> r8 <res la' si> r4
      r8 <res la' si> r8 <res la' si> r8 <res la' si> r8 <res la' si> 
      r8 <mi~ sol si mi>8~ <mi sol si mi>4 <sol si mi>8 r8 r4

      r8 <mi si' re> r8 <mi si' re> r8 <mi si' re> r8 <re sols si>
      r8 <la' do mi>~ <mi la do mi>4 r2
      r8 <fas do' re> r8 <fas do' re> r8 <re la' do> r4
      r8 <re sol si> r8 <re sol si> r8 <sol si re> r4

      r8 <mi sol do> r8 <mi sol do> r8 <mi sol do> r8 <mi sib' do>
      r8 <res la' si>~ <res la' si>4 r8 <res la' si> r8 <mib la do>
      r8 <mi sib' re> r8 <mi la do> r8 <res la' si> r8 <res la' si>
  }
  \alternative {
    { r8 <mi sol si mi>8~ <mi sol si mi>4 <sol si mi>8 r8 r4 }
    {
      <si, mi sol si mi>4\arpeggio
      <res la' si fas'>4\arpeggio
      <si mi sol si mi>2\arpeggio\laissezVibrer
    }
  }
}

% EOF
