% Fado Marujo
% Gravado por Joan Josep Ordinas Rosa <jordinas@gmail.com> 

\version "2.12.3"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Letra
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

LetraI = \lyricmode {
  % PA1
  % Quando ele passa, o marujo português
  Quan -- do~e -- le pa -- ssa, o ma -- ru -- jo por -- tu -- gue -- ês
  % Não anda, passa a bailar, como ao sabor das marés
  Não an -- da, pa -- ssa~a bai -- la -- ar, co -- mo~ao sa -- bor das ma -- re -- és

  % PA2
  % E quando se jinga, põe tal jeito, faz tal proa
  Quan -- do se	% anacrusi

  % PB
  % Chega a Lisboa, salta do barco num salto
  Che -- ga~a Lis -- bo -- a, sal -- ta do bar -- co num sal -- to
  % Vai parar à Madragoa ou então ao Bairro Alto
  Vai pa -- rar à Ma -- dra go -- a ou en -- tão ao Bai -- rro Al -- to __
  % Entra em Alfama e faz de Alfama o convés
  En -- tra~em Al -- fa -- ma e faz de~Al -- fa -- ma~o con -- vés
  % Há sempre um Vasco da Gama num marujo portugués
  Há sem -- pre~um Vas -- co da Ga -- ma num ma -- ru -- u jo por -- tu -- gués

  % anacrusi
  Quan -- do~e -- le
  % finale
  gués
}

LetraII = \lyricmode {
  \skip 4 \skip 16 \skip 16	% skip anacrusi
  % PA2
  % E quando se jinga, põe tal jeito, faz tal proa
  jin -- ga, põe tal jei -- to, faz tal pro -- a
  % Só para que se não distinga se é corpo humano ou canoa
  Só para que se não dis -- tin -- ga se~é cor -- po~hu -- ma -- no~ou ca -- no -- a
}

StrofeI = \markup {
  \column {
    \line { \bold 1. }
    \line { Quando ele passa, o marujo português }
    \line { Não anda, passa a bailar, como ao sabor das marés }
    \null
    \line { Quando se jinga, põe tal jeito, faz tal proa }
    \line { Só para que se não distinga se é corpo humano ou canoa }
    \null
    \line { Chega a Lisboa, salta do barco num salto }
    \line { Vai parar à Madragoa ou então ao Bairro Alto }
    \line { Entra em Alfama e faz de Alfama o convés }
    \line { Há sempre um Vasco da Gama num marujo portugués }
  }
}

StrofeII = \markup {
  \column {
    \line { \bold 2. }
    \line { Quando ele passa com seu alcache vistoso }
    \line { Tráz sempre pedras de sal no olhar malicioso }
    \null
    \line { Põe com malicia a sua boina maruja }
    \line { Mas se inventa uma carícia, não há mulher que lhe fuja }
    \null
    \line { Uma madeixa de cabelo descomposta }
    \line { Pode até ser a fateixa de que uma varina gosta }
    \line { Sempre que passa um marujo português }
    \line { Passa o mar numa ameaça de carinhosas marés }
  }
}

% EOF
