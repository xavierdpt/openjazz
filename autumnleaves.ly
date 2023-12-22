\version "2.22.1"
% https://www.youtube.com/watch?v=sSRLR7DQ6Dg
#(ly:expect-warning "cannot end volta")
#(ly:expect-warning "cannot end volta")
\header {
  title = "Autoumn Leaves"
}
mychords = \chordmode {
  \partial 2. r2.
  \repeat volta 2 {
    a1:m7
    d1:7
    g1:maj7
    c1:maj7
    fis1:m7.5-
  }
  \alternative {
    {
      b1:7
      e1:m7
      e1:m7
    }
    {
      b1:7
      e1:m
      e1:m
      fis1:m7.5-
      b1:7.9-
      e1:m
      e1:m
      a1:m7
      d1:7
      g1:maj7
      g1:maj7
      fis1:m7.5-
      b1:7.9-
      e2:m7 e2:7.7-
      d2:m7 d2:7.7-
      c1:maj7
      b1:7.9-
      e1:m
      e1:m
    }
  }
}
\score {
<<
\new ChordNames \chordmode {
  \set noChordSymbol = ""
  \mychords
}
\new Staff  \with { \consists "Volta_engraver" } \fixed c' {
\set Score.voltaSpannerDuration = #(ly:make-moment 2/4)
  \clef treble
  \key g \major
  \time 4/4
  \partial 2.
  e4 fis4 g4 |
  \repeat volta 2 {
    c'1~ |
    4 d4 e4 fis4 |
    b2 b2~ |
    4 c4 d4 e4 |
    a1~ |
  }
  \alternative {
    {
      4 b,4 cis4 dis4 |
      g1 |
      r4 e4 fis4 g4 |
    }
    {
      a4\repeatTie fis4 a4 g4 | % todo: tie with repeat mark
      e1~ |
      4 r4 dis4 e4 |
      fis4 b,4 fis2~ |
      4 fis4 e4 fis4 |
      g1~ |
      4 g4 fis4 g4 |
      a1~ |
      4 d4 d'4 c'4 |
      b1~ |
      4 r4 ais4 b4 |
      c'4 c'4 a4 a4 |
      fis2. c'4 |
      b2 b2~ |
      2. e4 |
      a2. g4 |
      fis2 g4 b,4 |
      e1 |
      r4 e4 fis4 g4 \bar "|."
    }
  }
}
\chordmode {
  \key g \major
  \time 4/4
  \mychords
}
>>
\layout { \context { \Score \remove "Volta_engraver" } }
}
