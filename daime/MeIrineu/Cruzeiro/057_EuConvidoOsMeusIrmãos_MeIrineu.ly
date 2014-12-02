\version "2.19.15"
\include "predefined-guitar-fretboards.ly"
\header {
  dedication=""
  title="Eu convido os meus irmãos"
  subtitle="057"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer="Mestre Irineu"
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
  \partial 2
  
  r2 |
  g2:m d2:  |
  g1:m  |
  g2:m bes2: |
  c1:m  |
  c1:m  |
  g1:m  |
  d1:7  |
  g2:m r2  |
}
pautaAa =
\relative c' {
  \clef treble
  \key g \minor
  \time 4/4
  \partial 2
  
  bes''4 g | bes g d bes | g2  bes'4  g | bes g8 g8 bes,4 d | c2. c8 c8  | c4 g' g a | bes g d bes | d c a bes | g2 r2| 
  \bar "||"
}
\addlyrics
{ 
 Eu convido os meus irmãos
 Que queiram me acompanhar
 Para nós cantar um pouco
 Nesta Noite de Natal
}
\addlyrics
{ 
Eu convido os meus irmãos
Para cantar com alegria
Para nós ir festejar
A Jesus Filho de Maria
}
\addlyrics
{
Eu convido os meus irmãos
Todo aquele que quiser
Para nós ir festejar
A Jesus, Maria e José
}
\addlyrics
{
Minha Sempre Virgem Maria
Vós só pode é se alegrar
Porque todos nós pedimos
Para Vós nos ajudar
}
\addlyrics
{
O sonhar é uma verdade
Igualmente à luz do dia
Reparem neste mundo
O sonho da Virgem Maria
}
\addlyrics
{
Meu Divino Senhor Deus
Vós me dê a santa luz
Para sempre eu festejar
O dia que nasceu Jesus
}
\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new ChordNames {\set chordChanges = ##t \harmoniaAa}
        \new FretBoards {\set chordChanges = ##t \harmoniaAa}
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \pautaAa
       
      >>
    }
    \layout {}
    \midi {}
    
  }
}

\bookpart {
  \header {instrument=""}
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new ChordNames {\set chordChanges = ##t \harmoniaAa}
        \new Staff \pautaAa
      >>
    }
    \layout {}
    \midi {}
  }
}


