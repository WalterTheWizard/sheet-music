\version "2.26.0"

\header {
  title = "A Throne and a Cross"
}

% --- MUSIC DEFINITIONS ---

% Removed the << >> here so relative mode tracks notes sequentially
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
  f8 d'4.\fermata f8 d8\fermata f,8 g8 f8
}

% Added matching partial upbeat here so the voices stay aligned
tenorTwo = \relative c' {
  \partial 8*3
  \voiceTwo
  \clef tenor
  \numericTimeSignature
  \time 4/4
  \key g \major
  \aikenHeads 
  
  a8 e8 fis8 b4 d,4 e4. e8 fis4( b4 a8) fis8 g8 a8 g2. b4 a2 r8
  a8 e8 fis8 b4 d,4 e4. e8 fis4( b4 a8) gis8 gis8 gis8 a2. e4 f2. r8 
  f8 b4.\fermata f8 b8\fermata f8 g8 f8
}

bassOne = \relative c' {
  \partial 8*3
  \voiceThree
  \clef bass
  \numericTimeSignature
  \time 4/4
  \key g \major
  \aikenHeads
  
  % Placeholder notes so the engine doesn't crash on an empty voice block
  b8 fis8 g8 c4 r2 r2.
}

% --- LYRICS ---

words = \lyricmode {
  With- -- in my heart God placed a throne___ where haugh- -- ty self held sway;
  But since the Christ be- -- came my Lord___ He rules there night and day.
}

% --- THE SCORE GENERATOR ---

\score {
  <<
    % This groups the two tenor lines onto a single upper staff
    \new Staff <<
      \new Voice = "t1" { \tenorOne }
      \new Voice { \tenorTwo }
    >>
    
    % This automatically attaches your text to the rhythm of Tenor 1
    \new Lyrics \lyricsto "t1" \words

    % This creates the lower bass staff
    \new Staff <<
      \new Voice { \bassOne }
    >>
  >>
  
  \layout {}
  \midi {}
}
