\version "2.16.2"

\header {
  dedication=""
  title="Noite Feliz"
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
  tagline="  "
}

pautaAa =
\relative c''
{
  \clef treble
  \key c \major
  \time 3/4
  g4 a4 g4 | e2. | g4 a4 g4 | e2. | d'2 d4 |
  b2. | c2 c4 | g2. | a2 a4 | c4 b4 a4 | g4 a4 g4 |
  e2. | e'2 e4 | g4 f4 e4 | d4 e4 d4 | e,2. | d'2 d4 |
  f4 d4 a4 | c2. | c2. | 
  
   \bar "||"
}
pautaBa =
\relative c
{
  \clef bass
  \key c \major
  \time 3/4
  c4 e4 g4 | c,4 e4 g4 | c,4 f4 g4 | e2. | d'2 d4 |
  b2. | c2 c4 | g2. | a2 a4 | c4 b4 a4 | g4 a4 g4 |
  e2. | e'2 e4 | g4 f4 e4 | d4 e4 d4 | e,2. | d'2 d4 |
  f4 d4 a4 | c2. | c2. | 
  
   \bar "||"
}
\addlyrics
{
  \set stanza = #"1."
Noi te fe liz, noi te fe liz
Ó sen hor, Deus de amor
Pobrezinho nasceu em Belém
Eis na lapa, Jesus nosso bem
Dorme em paz, ó Jesus
Dorme em paz, ó Jesus
}
\addlyrics 
{
  \set stanza = #"2."
Noite feliz, noite feliz
Eis que no ar vem cantar
Aos pastores os anjos dos céus
Anunciando a chegada de Deus
De Jesus, Salvador!
De Jesus, Salvador!
}
\addlyrics 
{
  \set stanza = #"3."
Noite feliz, noite feliz
Ó senhor, Deus de amor
Pobrezinho nasceu em Belém
Eis na lapa, Jesus nosso bem
Dorme em paz, ó Jesus
Dorme em paz, ó Jesus
}
\addlyrics 
{
  \set stanza = #"4."
Noite feliz, noite feliz
Eis que no ar vem cantar
Aos pastores os anjos dos céus
Anunciando a chegada de Deus
De Jesus, Salvador!
De Jesus, Salvador!
}

harmoniaAa =
\chordmode
{
  \time 3/4
  % Noite Feliz  
  c2.: |
  % Noite Feliz
  c2.: |
  % Õ senhor
  g2.:7 |
  % Deus de amor
  c2.: |
  % Pobreezinho nas
  f2.: |
  % ceu em Belém
  c2.: |
  % Eis na lapa Je
  f2.: |
  % sus nosso bem
  c2.: |
  % dorme em paz, õ Je
  g2.:7 |
  % sus_____
  a2:m 
  % _us
  a4:/gis |
  c2.: |
  g2.:7 |
  c2.: | 

}

\bookpart {
  \score {
    \new StaffGroup {
      \override Score.RehearsalMark #'self-alignment-X = #LEFT
      <<
        \new ChordNames {\set chordChanges = ##t \harmoniaAa}
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \pautaAa
        \new Staff \with {instrumentName = #"" shortInstrumentName = #" "} \pautaBa
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


