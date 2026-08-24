\version "2.26.0"

\header {
  title = "A Throne and a Cross"
}

tenorOne = \relative c' {
  \partial 8*3
  \voiceOne
  \clef tenor
  \numericTimeSignature
  \time 4/4
  \key g \major
  \override KeySignature.sharp-positions = #'(4)
  \aikenHeads
  
  a8 e8 fis8 b4 b4 a4. g8 c2 ~ c8 fis,8 g8 a8 b2. d4 c2 r8
  a8 e8 fis8 b4 b4 a4. g8 c2 ~ c8 d8 e8 fis8 c2. b4 a2. r8 
  fis8 d'4.\fermata fis,8 d8\fermata fis8 g8 fis8
}

tenorTwo = \relative c' {
  \partial 8*3
  \voiceTwo
  \clef tenor
  \numericTimeSignature
  \time 4/4
  \key g \major
  \override KeySignature.sharp-positions = #'(4)
  \aikenHeads 
  
  a8 e8 fis8 b4 d,4 e4. e8 fis4( b4 a8) fis8 g8 a8 g2. b4 a2 r8
  a8 e8 fis8 b4 d,4 e4. e8 fis4( b4 a8) g8 g8 g8 a2. e4 fis2. r8 
  fis8 b4.\fermata fis8 b8\fermata fis8 g8 fis8
}

bassOne = \relative c' {
  \partial 8*3
  \voiceOne
  \clef bass
  \numericTimeSignature
  \time 4/4
  \key g \major
  \aikenHeads
  b8 fis8 g8 c4 
}

bassTwo = \relative c' {
  \partial 8*3
  \voiceTwo
  \clef bass
  \numericTimeSignature
  \time 4/4
  \key g \major
  \aikenHeads
  
  b,8 fis8 g8
  
}


words = \lyricmode {
  With- -- in my heart God placed a throne___ where haugh- -- ty self held sway;
  But since the Christ be- -- came my Lord___ He rules there night and day.
}


\score {
  <<
    \new Staff <<
      \new Voice = "t1" { \tenorOne }
      \new Voice { \tenorTwo }
    >>
    
    \new Lyrics \lyricsto "t1" \words

    % This creates the lower bass staff
    \new Staff <<
      \new Voice { \bassOne }
      \new Voice { \bassTwo }
    >>
  >>
  
  \layout {}
  \midi {}
}
 