\version "2.18.2"

global = {
  \key g \major
  \time 2/2
}
right = \relative c' {
  % \global
  b8  d8  g8 b,8   d8 g8 b,8 d8
  g8  b,8 d8 g4.   r4
  b,8 d8  g8 b,8   d8 g8 b,8 d8
  g8  b,8 d8 g4.   r4
}

left = \relative c {
  % \global
  g2 b2
  d2 e4 d4
  g,2 b2 
  d2 g4 fes4
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi {
    \tempo 4=156
  }
}
