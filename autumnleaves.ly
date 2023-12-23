\version "2.22.1"
% https://www.youtube.com/watch?v=sSRLR7DQ6Dg
\header {
  title = "Autumn Leaves"
}
mychords = \chordmode {
  \partial 2. r2.
  \repeat volta 2 {
    a,1:m7
    d1:7
    g,1:maj7
    c1:maj7
    fis,1:m7.5-
  }
  \alternative {
    {
      b,1:7
      e,1:m7
      e,1:m7
    }
    {
      b,1:7
      e1:m
      e1:m
      fis,1:m7.5-
      b,1:7.9-
      e1:m
      e1:m
      a,1:m7
      d1:7
      g,1:maj7
      g,1:maj7
      fis,1:m7.5-
      b,1:7.9-
      e2:m7 e2:7.7-
      d2:m7 d2:7.7-
      c1:maj7
      b,1:7.9-
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
\new Staff \fixed c' {
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
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
      a4\repeatTie fis4 a4 g4 |
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
\new Staff \chordmode {
  \clef bass
  \time 4/4
  \key g \major
  \transpose c c, { \mychords }
}
>>
}
