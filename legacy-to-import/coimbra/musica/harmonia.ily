% Coimbra é uma Lição
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

\include "portugues.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Harmonia
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Harmonia = \chordmode {
  \set chordChanges = ##t
  \partial 4 s4  % anacrusis

  % Menor
  % 1a
  mi1:m mi1:m7+ mi1:m7 mi1:m6
    do1:7+/mi mi2:m do2 si1:7 si1:7
  res2:dim7 si2:7 la1:m si1:7 res1:dim7 res1:dim7 si1:7
  mi1:m mi1:m
  %
  res1:dim7 res1:dim7 si1:7
  mi1 mi1

  %Maior
  \set chordChanges = ##f
  mi1
  \set chordChanges = ##t
  las1:dim7 si1:7 fas1:m7 si1:7 si1:7 mi1 mi1
  si1:7 mi1 mi1
  si1:7 mi1 r2 si2:7 mi1
}

HarmoniaSimple = \chordmode {
  \set chordChanges = ##t
  \partial 4 s4  % anacrusis

  % Menor
  \repeat unfold 2 {
    % 1a
    mi1:m mi1:m7+ mi1:m7 mi1:m6
      do1:7+/mi mi2:m do2 si1:7 si1:7
    % last line enhanced =>
      %do1:7+/mi mi2:m do2/sol si1:7 si1:7
    si1:7 la1:m si1:7 si1:7 si1:7 si1:7
    % last line enhanced =>
    %res2:dim7 si2:7 la2:m la2:m/sol si2:7/fas si2:7 do2:dim7 res2:dim7
      %fas2:dim/la fas2:dim/sol si2:7/fas si2:7
  }
  \alternative {
    { mi1:m mi1:m }
    { mi1 mi1 }
  }

  %Maior
  \repeat unfold 2 {
    mi1 las1:dim7 si1:7 fas1:m7 si1:7 si1:7 mi1 mi1
  }
  r2 si2:7 mi1
}

Trastos = \Harmonia

% EOF
