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
  \partial 4
   d1:m c1: d1:m a1:m
   d1:m bes1: f1: a1:m
   d1:m c1: f1: a1:m
  
}
pautaAa =
\relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \partial 4
  
  e4^"repetir 3 vezes cada estrofe" | g2. e4 | g2 g4 g | g4. e8 a4. f8 | e2. 
  c4 | e c e c | a2 a4 a4 | a a b c | d2. d4 | d4. d8 e4. f8 | g2.
  
  \bar "||"
}
\addlyrics
{ 
  Força da paz
  Cresça sempre sempre mais
  Que reine a paz e acabem as fronteiras
  Nos somos um
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


 
