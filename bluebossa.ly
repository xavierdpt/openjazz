\version "2.22.1"
% https://lilypond.org/doc/v2.23/Documentation/notation/common-chord-modifiers
% https://tsmp.org/keyboard/lias/pdf/Symbols.pdf
% https://www.jazz-guitar-licks.com/pages/chords/dominant-seventh-flat-ninth-chords-7b9-guitar-diagrams-and-voicings.html
% https://www.hearandplay.com/main/power-dominant-seventh-flat-ninth-chord

\header {
  title = "Blue Bossa"
}
mychords = \chordmode {
  r4
  c1:m7
  c1:m7
  f1:m7
  f1:m7
  d1:m7.5-
  g1:7.9-
  c1:m7
  c1:m7
  ees1:m7
  aes1:7
  des1:maj7
  des1:6
  d1:m7.5-
  g1:7.9-
  c1:m7
  d2.:m7.5- g4:7.9-
}
<<
\new ChordNames \chordmode {
  \set noChordSymbol = ""
  \mychords
}
\new Staff {
  \clef treble
  \key c \minor
  \time 4/4
  \partial 4 g'4 |
  g''4. f''8 ees''8 d''4 c''8~ |
  2. bes'4 |
  aes'2 g''4. f''8~ |
  1 |
  f''4. ees''8 d''8 c''4 bes'8~ |
  2. aes'4 |
  g'2 f''4. ees''8~ |
  1 |
  ees''4. des''8 c''8 bes'4 aes'8~ |
  2. ges'4 |
  ges'4 f'8 bes'8~8 f'8 aes'4~ |
  1 |
  aes'4 g'8 bes'8~2 |
  aes'4 g'8 bes'8~4. aes'8 |
  g'1~ |
  2. g'4 \bar "|."
}
\chordmode {
  \key c \minor 
  \time 4/4
  \mychords
}
>>
