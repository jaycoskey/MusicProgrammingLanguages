\version "2.18.2"

global = {
  \key c \major
  \time 3/4
}

right = \relative c'' {
  \global
  g8 g8 a4 g4
  c4 b2
  
}

left = \relative c {
  \global
  r4 <c e g>2
  r4 <d f g>2
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
    \tempo 4=100
  }
}
