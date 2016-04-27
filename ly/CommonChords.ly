% Based on common chord modifiers listed in the LilyPond docs
% See http://lilypond.org/doc/v2.19/Documentation/notation/common-chord-modifiers
\version "2.18.2"
\layout { indent = 0.0 }
<<
  \relative {
    \key c \major
    \time 4/4
    \chordmode {
        c1:5    c1:m5    c1:m        c1:aug
        c1:dim  c1:7     c1:maj7     c1:m7
        c1:dim7 c1:aug7  c1:m7.5-    c1:7+
        c1:6    c1:m6    c1:9        c1:maj9
        c1:m9   c1:11    c1:maj11    c1:m11
        c1:13   c1:13.11 c1:maj13.11 c1:m13.11
        c1:sus2 c1:sus4
        \powerChords c1:1.5
        \powerChords c1:1.5.8
    }
  }
  \addlyrics {
       "5"     "m5"     "m"         "aug"
       "dim"   "7"      "maj7"      "m7"
       "dim7"  "aug7"   "m75"       "7+"
       "6"     "m6"     "9"         "maj9"
       "m9"    "11"     "maj11"     "m11"
       "13"    "13.11"  "maj13.11"  "m13.11"
       "sus2"  "sus4"   "pow1.5"    "pow1.5.8"
  }
>>