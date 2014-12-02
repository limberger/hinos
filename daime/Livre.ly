\version "2.19.15"

\header {
  dedication=""
  title="Livre"
  subtitle=""
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger="Shoo"
  opus=""
  instrument="Acordeom"
  copyright="     "
  tagline="  "
}

pautaAa =
\relative c''
{
  \clef treble
  \key c \major
  \time 4/4
   \partial 4 
   \repeat volta 3 {
  e4 | g4 g4  c4 c4 | g2  a4 g4 | e4 e4 d4 c4 | e2 r4
  e4 | g4 g4  c4 c4 | g2  a4 g4 | e4 e4 d4 c4 | e2 r4 
  g4  | g4 e2     e8 e8 | c4 a4  d4 d4 | g4 g4 e4 e4 | d4 d4 c2 | 
  r2 r4  g'4 | g4 e2     e8 e8 | c4 a4  d4 d4 | g4 g4 e4 e4 d4 d4 c2
    }
   \bar "||"
}
\addlyrics
{
Li vre eu vou se guin do meu ca mi nho
Li vre ninguem po de me se gu rar
Li vre estou e pro te gi do
Meu Mes tre sem pre a me gui ar
}
\addlyrics
{
O lha fechei a s por tas do pa ssa do
Vi vo pra fren te a gora vou o lhar
Ve jo o brilho do Sa lão Dou ra do
Sin to meu Ser I lu mi na do
E a cons ciëncia des per tar
}
\addlyrics {
Ve nha va mos can tar com a le gri a
Va mos dei xar a dor se a fas tar
Ve nha n~ao vem com tu a for ta le za
Eu que ro ver tua be le za
E o amor contigo ce le brar
}
\addlyrics {
 Sin to den tro de mim uma crian ça
 Ou ço o que ela tem para en si nar
 So nho sonho um sonho de crian ça
 Fe liz da quele que ainda so nha
 Ele e quem um dia vai che gar
}
\addlyrics {
  Va mos re a firmar a No va Era
  Va mos oh! Meu ir mao se pre pa rar
  Ir mao to me a cha ve do de sen ga no
  Com fe em Deus sem pre aman do
  Mu dar o que tem pra mu dar
}
harmoniaAa =
\chordmode
{
  \time 4/4
  \partial 4

  c4:  |
  c2: 
  c2: |
  c2: 
  c4: 
  f4:|
  g4:
  g4:
  c2: |
  c2:
  c4:
  c4: |
  c2: 
  c2: |
  c2: 
  c4: 
  f4:|
  g4:
  g4:
  c2: |
  c2:
  c4:
  c4: |
  c4:
  c4:
  c4:
  a8:m 
  f8: |
  f1: |
  f4:
  g2:
  g4: |
  c1: |
    c4:
  c4:
  c4:
  a8:m 
  f8: |
  f1: |
  f4:
  g2:
  g4:
  c1:

}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new ChordNames {\set chordChanges = ##t \harmoniaAa}
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


