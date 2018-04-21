\version "2.12.1"

\header {
  title = "Morning Has Broken"
  composer = "Gaelic Melody"
  poet = "Eleanor Farjeon, et. al."
}

Chords = \chordmode {
\transpose c d {
c1. d2.:m g f c
c e:m a:m c g:sus4 g 
c f:maj f c a:m d:7
c e:m a:m d:m c 
}
}

\score{

  << 

  \tempo 2. = 60

  \new ChordNames {
    \set chordChanges = ##t
    \Chords
  }
%  \new FretBoards {
%    \set chordChanges = ##t
%    \Chords
%  }
  \transpose c d {
  \relative c' {
    \time 9/4
    \key c \major

    c4 e g c2. d2. b4 a g a2 ( b8 a8 ) g2.
    c,4 d e g2. a2. g4 e c d2. ( d2. )
    g4 e g c2. a g4 e c c2. d2.
    e4 d e g2. a2. d,4 e4. d8 c2. ( c2. )
    
  }
  }
  \addlyrics {
    \set stanza = "1."
Morn -- ing has bro -- ken, like the first morn -- ing
Black -- bird has spo -- ken, like the first bird
Praise for the sing -- ing, praise for the morn -- ing
Praise for the spring -- ing fresh from the world
  }
  \addlyrics {
    \set stanza = "2."
Sweet the rain's new fall, sun -- lit from heav -- en
Like the first dew -- fall, on the first grass
Praise for the sweet -- ness of the wet gar -- den
Sprung in com -- plete -- ness where our feet pass
  }
  \addlyrics {
    \set stanza = "3."
Mine is the sun -- light, mine is the new dawn
Born of the one light, E -- den saw play
Praise with e -- la -- tion, praise ev -- ery morn -- ing
Our re -- cre -- a -- tion of the new day
  }
  >>

  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
    \context {
     \Lyrics
        \consists "Bar_engraver"
        \consists "Separating_line_group_engraver"
        \override BarLine #'transparent = ##t

    }
  }

  \midi {
    \context {
      \Score
        tempoWholesPerMinute = #(ly:make-moment 80 2)
    }
  }
}
