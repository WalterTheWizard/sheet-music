\version "2.26.0"

\header {
  title = "Oh, Love Divine"
  composer = "Caelan J Penner"
  poet = "Caelan J Penner" 
  copyright = "© 2026 Caelan J Penner"
  tagline = ##f

} 


% soprano

soprano = {
  \voiceOne
  \key e \major
  \aikenHeads
  \time 4/4

  e'4.
  gis'8
  a'8 
  b'4.
  cis''4 
  b'8
  cis''8 
  b'4. 
  r8
  e'4.
  gis'8
  a'8
  b'4. 
  gis'4 
  gis'8
  fis'8
  fis'4
  r4
}


% ============================================================
% WOMEN — LOWER VOICE
% This voice has its OWN rhythm.
% ============================================================

alto = {
  \voiceTwo
  \key e \major
  \time 4/4
  \aikenHeads
  
  b4.
  e'8
  fis'8 
  gis'4.
  a'4 
  gis'8 
  a'8
  gis'4.
  r8
  cis'4. 
  e'8
  fis'8
  fis'8( gis'4)
  e'4
  e'8
  dis'8
  dis'4
  r4
  
}

% ============================================================
% LYRICS
% ============================================================

words = \lyricmode {
  Oh, Lord I need Your grace a -- gain,
  for I have fal -- len in -- to sin 
}

wordstwo = \lyricmode {
  The road is rough, Dark is the night,
  Please bless me with Your Ho -- ly  Light
}

wordsthree = \lyricmode {
  You'll ne -- ver fail me this I know,
  Be -- cause the Bi -- ble tells me so 
}
% ============================================================
% MEN
% ============================================================

menMusic = {
  \key e \major
  \time 4/4
  \aikenHeads

  gis4. b8 b8 e'4. 
  e'4 e'8 e'8 e'4. r8 
  a4. b8 b8 b4.
  b4 b8 b8 b4 r4
  }




% ============================================================
% SCORE
% ============================================================

\score {
  \new ChoirStaff <<

    % ---------------- WOMEN ----------------

    \new Staff <<
      \clef treble

      \new Voice = "soprano" {
        \soprano
      }

      \new Voice = "womenLower" {
        \alto
      }

      \new Lyrics \lyricsto "soprano" {
        \words
      }
      
      \new Lyrics \lyricsto "soprano"{
        \wordstwo
      }
      \new Lyrics \lyricsto "soprano"{
        \wordsthree
      }
    >>


    % ---------------- MEN ----------------

    \new Staff <<
      \clef bass

      \new Voice = "men" {
        \menMusic
      }
    >>

  >>

  \layout { }

}
