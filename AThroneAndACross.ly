\version "2.26.0"

\header {
  title = "A Throne and a Cross"
}

  tenorOne = <<\relative c' {
    \partial 8*3
    \voiceOne
    \clef tenor
    \numericTimeSignature
    \time 4/4
    \key g \major
    \override KeySignature.sharp-positions = #'(4)
    \aikenHeads
    a8 e8 fis8 b4 b4 a4. g8 c2 ~ c8 fis,8 g8 a8 b2. d4 c2 r8
  }
  \addlyrics {
    With -- in my heart God placed a throne___ 
  }
>>

tenorTwo = \relative c' {
  \voiceTwo
  \clef tenor
  \numericTimeSignature
  \time 4/4
  \key g \major
  \override KeySignature.sharp-positions = #'(4)
  \aikenHeads 
  a8 e8 fis8 b4 d,4 e4. e8 fis4( b4 a8) fis8 g8 a8 g2. b4 a2 r8
}

\score {
  \new Staff <<
    \new Voice { \tenorOne }
    \new Voice { \tenorTwo }
  >>

  \layout {}
  \midi {}
}