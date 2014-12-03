\version "2.16.2"
\header {
  dedication=""
  title="Bandeira do Divino"
  subtitle="Natal"
  subsubtitle=""
  poet=""
  meter=""
  piece=""
  composer=""
  arranger="Shoo"
  opus=""
  instrument="Acordeom"
  copyright="     "
  tagline="Flor de Cristo - http://fb.com/flordaconscienciacristica"
  meter="  "
}
pautaAa =
\relative c''
{
  \clef treble
  \key c \major
  \tempo 4 = 80
  \time 3/4
  g4. a8 g4 | e2. | g4. a8 g4 | e2. | 
  d'2 d4  | b2. | c2 c4 | g2. | a2 a4 |
  c4. b8 a4 | g4. a8 g4 | e2. | a2 a4 | c4. b8 a4 |
  g4. a8 g4 | e2. | d'2 d4 | f4. d8 b4 | c2. | 
  e2. | c4. g8 e4 | g4. f8 d4 | c2. | <<e2. g c >> 
   \bar "||"
}
harmoniaAa =
\chordmode
{
  \time 3/4
  e1: |
  e1: |
  e1: |
  a1: |
  a1: |
  
}
\addlyrics
{
  \set stanza = #"1."
  Os devotos do Divino vão abrir sua morada
  Pra bandeira do menino ser bem-vinda, ser louvada, ai, ai
  Deus nos salve esse devoto pela esmola em vosso nome
  Dando água a quem tem sede, dando pão a quem tem fome, ai, ai
  A bandeira acredita que a semente seja tanta
  Que essa mesa seja farta, que essa casa seja santa, ai, ai
  Que o perdão seja sagrado, que a fé seja infinita
  Que o homem seja livre, que a justiça sobreviva, ai, ai
  Assim como os três reis magos que seguiram a estrela guia
  A bandeira segue em frente atrás de melhores dias
  No estandarte vai escrito que ele voltará de novo
  E o rei será bendito, ele nascerá do povo, ai, ai
  
}
pautaBa =
\relative c
{
  \clef bass
  \key c \major
  \time 3/4
  c4 e4 g4 | c,4 e4 g4 | c,4 e4 g4 | c,4 e4 g4 | d4 f4 g4 |
  d4 f4 g4 | c,4 e4  g4 | c,4 e4 g4 | a,4 c4 f4 | a,4 c4 f4 | c4 e4 g4 |
  c,4 e4 g4 | a,4 c4 f4 | a,4 c4 f4 |   c4 e4 g4 | c,4 e4 g4 | b,4 f'4 g4 |
 | b,4 f'4 g4 | c,4 e4 g4 |  c,4 e4 g4 |  c,4 e4 g4 | b, f' g | c, e g | c,2.
 
  
   \bar "||"
}
\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new ChordNames {\set chordChanges = ##t \transpose c d \harmoniaAa } 
%%        \new Staff  \with {instrumentName = #"" shortInstrumentName = #" "} \transpose c d \pautaAa
%%        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \transpose c d \pautaBa
      >>
    }
    \layout {}
    \midi {}

  }
}