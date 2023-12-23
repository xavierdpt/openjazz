\version "2.22.1"
\header {
  title = "All of Me"
}
mychords = \chordmode {
  c1:maj7
  c1:maj7
  e,1:7
  e,1:7
  a,1:7
  a,1:7
  d1:m
  d1:m
  e,1:7
  e,1:7
  a,1:m
  a,1:m
  d1:7
  d1:7
  d1:m7
  g,1:7
  c1:maj7
  c1:maj7
  e,1:7
  e,1:7
  a,1:7
  a,1:7
  d1:m
  d1:m
  f1
  f1:m
  c2:maj7 e2:m7
  a,1:7
  d1:m7
  g,1:7
  c2:6 ees2:dim
  d,2:m7 g,2:7
}
<<
\new ChordNames \chordmode {
  \set noChordSymbol = ""
  \mychords
}
\new Staff {
  \clef treble
  \time 4/4
  c''4 g'8 e'8~2~ |
  2 \tuplet 3/2 { c''4 d''4 c''4 } | b'4 gis'8 e'8~2~ | 1 |
  a'4. g'8 e'2~ | 4 dis'4 \tuplet 3/2 { e'4 bes'4 a'4 } | g'2 f'2~ | 1 |
  e'4. ees'8 d'2~ | 2 \tuplet 3/2 { e'4 gis'4 b'4 } | d''2 c''2~ | 1 |
  b'4. bes'8 a'2~ | 2 \tuplet 3/2 { a'4 d''4 b'4 } | a'1 | b'1 |
  c''4 g'8 e'8~2~ | 2 \tuplet 3/2 { c''4 d''4 c''4 } | b'4 gis'8 e'8~2~ | 1 |
  a'4. g'8 e'2~ | 4 dis'4 \tuplet 3/2 { e'4 bes'4 a'4 } | g'2 f'2~ | 1 |
  d''2 c''4 b'4 | d''2. c''4 | b'2 e'4 g'4 | b'2. a'4 |
  c''2 a'4 c''4 | e''2 e''2 | c''1~ | 1 \bar "|."
}
\new Staff \chordmode {
  \clef bass
  \time 4/4
  \transpose c c, { \mychords }
}
>>
