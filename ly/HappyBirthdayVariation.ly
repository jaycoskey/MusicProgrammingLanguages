\version "2.18.2"

global = {
  \key c \major
  \time 3/4
}

right = \relative c'' {
  \global
  g8. g16 \times 2/3 {a2 g4}
  a16 c8.  b2
  
}

left = \relative c, {
  \global
  r4 \times 2/3 { r2 <c' e g>4 }
  r4 a8 <g c e>8 b8 <d f g>8
  

  
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
