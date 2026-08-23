\version "2.26.0"

\header {
  title = "Oh, Love Divine"
  composer = "Caelan J Penner"
  tagline = ##f
}


% ============================================================
% WOMEN — UPPER VOICE
% ============================================================

womenUpper = {
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
}


% ============================================================
% WOMEN — LOWER VOICE
% This voice has its OWN rhythm.
% ============================================================

womenLower = {
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
  
}

% ============================================================
% LYRICS
% ============================================================

words = \lyricmode {
  Oh, Lord I need Your grace a- -- gain 
}

% ============================================================
% MEN
% ============================================================

menMusic = {
  \key e \major
  \time 4/4
  \aikenHeads

  gis4. 
  b8
  b8
  e'4. 
  e'4 
  e'8
  e'8
  e'4. 
  r8 
}




% ============================================================
% SCORE
% ============================================================

\score {
  \new ChoirStaff <<

    % ---------------- WOMEN ----------------

    \new Staff <<
      \clef treble

      \new Voice = "womenUpper" {
        \womenUpper
      }

      \new Voice = "womenLower" {
        \womenLower
      }

      \new Lyrics \lyricsto "womenUpper" {
        \words
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