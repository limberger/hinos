\version "2.14.2"
\header {
  title="O MAIOR PRESENTE"
  subtitle="marcha"			     
  composer="Ben Hershy"
}
pautaAa  =
\relative c'
{
  \clef treble
  \key c \major
  \time 4/4
  \partial 4
  \repeat volta 2 {
  g'4~ g4 g4 a4 g | f e g2 | g4 a g f | e g2 r4 |
  c,4 c e d |
  c b a e'4  | d4 c e d | c2 c4 r4 |
  c4 c e d | c b a e' |  d4 c e d | c2 c4 r4 } \break
  \repeat bolta 2 {
   a2 b4 c | b c  a g | c e2 r4 |
   a,2 b4 c | b c  d  e4 | d2 r2 | \break
   g2 g4 f | e d c e c2 a4 r2 |
   g'2 g4 f | e  d c e2 |
   a,4 b c b c a g c e
   c4 g' g g f e d e c}
}
\addlyrics 
{
Eu de -- se -- jo pra vo -- cê
E pe -- ço pa -- ra mim
Es -- tar sem -- pre sob o man -- to
Da Vir -- gem Ma -- ri -- a
Es -- tar sem -- pre sob o man -- to
Da Vir -- gem Ma -- ri --  a

As -- sim, se -- lo_a nos -- sa u -- ni -- ão
Na -- da mais há pra di -- ze -- er
Tu -- do fi -- ca assim co -- mo Deus quer
Tu -- do fi -- ca mui -- to bem
Sob o man -- to da Ra -- i -- i --nha
Da paz, da pu -- re -- za e do amor


}

harmoniaAa =
\chordmode
{
   \time 4/4
  \partial 4
  g4:
  g1:
  g2:
  c2:
  g1:
  g4:
  c2:
  c4:
  a1:m
  a2:m
  d2:m
  g1:
  c1:
  a1:m
  a2:m
  d2:m
  g1:
  c1:

  a2.:m
  c4:
  c2:
  e2:m
  e1:m
  
  a2.:m
  c4:
  c2:
  g2:
  g1:
  
  g1:
  g1:
  g2:
  c2:
  
  g1:
  g1:
  c2:
  
  a2:m
  a2:m
  c2:
  c2:
  e2:m
  
  g2:
  g2:
  g2:
  g4:
  c2:
  
  
  
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
