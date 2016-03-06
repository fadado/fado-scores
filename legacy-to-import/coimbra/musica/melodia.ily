% Coimbra é uma Lição
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Melodia
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Melodia = \relative do' {
  \partial 4 si'4  % anacrusis

  % Menor
  \repeat volta 2 {
    mi4 mi mi mi
    res2. si4
    re4 re re re
    dos2. si4

    % 5
    do!4 do do do
    si2 sol2
    fas4 la2.~
    la2 r4 si4

    % 9
    res4 res res res
    do2. do4
    si4 si si si
  }
  \alternative {
    {
      la2. la4

      % 13
      sol4 sol sol sol
      fas2 si2
      la4 sol2.~
      sol2 r4 si4
    }
    {
      \set Staff.voltaSpannerDuration = #(ly:make-moment 1 1)
      la2. si4

      % 29
      si4 dos4 res mi4
      sol2 fas
      \bar "||"
      \key mi \major
      mi1~
      mi2 r4 dos4
      \unset Staff.voltaSpannerDuration
    }
  }

  % Maior
  \mark \markup { \fontsize #-2 \musicglyph #"scripts.segno" }
  \set Score.currentBarNumber = #1
  % 1
  \set Score.repeatCommands = #'(start-repeat)
  si4 mi, sols si
  dos2. do4
  si4 res, fas la
  dos2. do4

  % 5
  si4 la si res4
  \set Score.repeatCommands = #'((volta "1, 3"))
  sols2. fas4
  fas4 mi sols mi
  si2. dos4
  \set Score.repeatCommands = #'((volta #f) end-repeat)
  %
  \set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
  sols'2 fas
  mi1~
  mi2.  dos4
  \DalSegno 
  \set Score.repeatCommands = #'((volta #f) end-repeat)
  %
  \set Staff.voltaSpannerDuration = #(ly:make-moment 1 1)
  \set Score.repeatCommands = #'((volta #f) (volta "4") end-repeat)
  sols'2 fas
  mi1~
  \set Score.repeatCommands = #'((volta #f))
  mi2 r2
  R1
  \bar "|."
}

Breaks = \notemode {
  \partial 4 s4
  \repeat unfold 4 { s1 * 4 \break }
  s1 * 5 \break
  \repeat unfold 2 { s1 * 4 \break }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

BreaksT = \notemode {
  \partial 4 s4
  \repeat unfold 11 { s1 * 4 \break }
}

Transcriçao = \relative do' {
  \partial 4 si'4  % anacrusis

  % Menor
  % 1
  mi2 mi8 mi mi4
  res4( si2) si8 re~
  re4. re8~ re4 re8 re
  dos2 r4 la

  % 5
  do!2 do4 do8 do
  si2 sol4. fas8~
  fas4 la2.
  r2 r4 si

  % 9
  res2 res8 res4 si8
  do2 r4 do
  si4. si8~ si si4 si8
  la2 r4 la

  % 13
  sol4 sol sol4. sol8
  fas4( si2) la8( si) 
  la8( \stemUp si4 \stemNeutral la8) sol2
  r2 r4 si8 mi~

  % 17
  mi4~ mi16 mi mi8 fas( mi res4~
  res8) res4. r4 r8 si
  re!4 re~ re8[ re] re16 mi8.
  dos2 r4 la(

  % 21
  do!4) do8. do16~ do8 do do4
  si4( sol2) sol8 fas(~
  fas4 la2) r4
  r2 r4 si

  % 25
  res2 res8 res res4
  do4. do8 r4 do8 si~
  si4 si8. si16~ si8 si4 la8~
  la4. la8 r4 r8 la

  % 29
  si4. dos8 res mi4 sol16( fas~
  fas4.) fas8 fas4. mi8~
  \key mi \major
  mi2 r2
  r2 r4 r8 si

  \set Score.currentBarNumber = #1
  \repeat volta 2 {
    % Maior
    % 1
    sols2 mi4 sols16 si8.
    dos2~ dos4 dos8 si8~
    si4 res, r8 fas8 la dos~
    dos2 r2

    % 5
    si4 si8 la si res4 sols8~
    sols4. fas8 fas4 fas4~
    fas8 mi4 mi8~ mi8 sols mi4
    si4 si r2

    % 9
    dos4 si mi,8 sols4 si8
    dos8( si dos2) dos4
    si res, r8 fas4 la8
    dos2 r4 r8 la8

    % 13
    si4 la si8 res4 sols8(
    fas2) fas4 mi
    mi2 r2
  }
  \alternative {
    {
      r2 r4. si8
    }
    {
      r4 r4 r2 R1
      \bar "|."
    }
  }
}

% EOF
