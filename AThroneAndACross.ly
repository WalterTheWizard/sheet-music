\version "2.26.0"

tenorOne = \relative c' {
  \voiceOne
  \clef tenor
  \numericTimeSignature
  \time 4/4
  a8 e8 f8 b4 b4 
}

tenorTwo = \relative c' {
  \voiceTwo
  a8 e8 f8 b4 \stemUp d,4 
}

\score {
  \new Staff <<
    \new Voice { \tenorOne }
    \new Voice { \tenorTwo }
  >>

  \layout {}
  \midi {}
}