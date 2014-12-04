\version "2.19.15"
\include "predefined-guitar-fretboards.ly"
\header {
  dedication=""
  title="Força da Paz"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Novo Quilombo"
  arranger="Shoo"
  opus=""
  instrument="Acordeom"
  copyright="     "
  tagline="Flor de Cristo - http://fb.com/flordaconscienciacristica"
}
harmoniaAa =
\chordmode
{
  \tempo 4=60
  \time 4/4
   d1:m | e1:m |  g1: b:m d8:m a1:m |
   
   d1:m bes1: f1: a1:m
   d1:m c1: f1: a1:m
  
}
pautaAa =
\relative c' {
  \clef treble
  \key c \major
  \time 4/4
  
  a'4  g2 a4 | e2  a4 a4 b4 b4  c4 d | b4.
   g8 e'4 e4  | d4. d8 c8 c8 d c8 b4 a8 g2 a2 g4 b4 a1
  \bar "||"
}
\addlyrics
{ 
  For ça da paz
  Cres ça sem pre sem pre mais
  Que rei ne_a paz e aca bem as fron te i ras
  Nos so mos um
}


\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new FretBoards {\set chordChanges = ##t \harmoniaAa}
        \new ChordNames {\set chordChanges = ##t \harmoniaAa}
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \pautaAa
      >>
    }
    \layout {}
    \midi {}
    
  }
}

%%\bookpart {
%%  \header {instrument=""}
%%  \score {
%%    \new StaffGroup {
%%     \override Score.RehearsalMark #'self-alignment-X = #LEFT
%%      <<
%%        \new ChordNames {\set chordChanges = ##t \harmoniaAa}
%%        \new Staff \pautaAa
%%      >>
%%    }
%%    \layout {}
%%    \midi {}
%%  }
%%}


 
