\version "2.10.33"

\header {
  title = "Home in CoHo"
  composer = "Rob Dietz"
  tagline = ""
}

Chords = \chordmode {
  \partial 2 r2
    g1 g d d
    g g d d
    c d g g
    g g d d 
    g g d d 
    c d g r1
}
 
\score{

  << 

  \new ChordNames {
    \set chordChanges = ##t
    \Chords
  }
  \relative c'' {
    \key g \major

    \once \override TextScript #'extra-offset = #'(-9.0 . 2.0 )
    \partial 2 g4^\markup { \italic Verse } g
    b2 r2 r4 b8 b g4 b a2 r2 r2 r4 g8 g

    b2 r2 r4 b8 b g4 b a2 r2 r2 r4 d,8 d

    e4 e8 e e4 e fis fis8 fis fis4 fis g2 r2 r1

    \once \override TextScript #'extra-offset = #'(-9.0 . 2.0 )
    b2^\markup { \italic Chorus } g r4 b8 b c4 b a2 d, r1

    b'2 g2 r4 b8 b c4 b a2 d, r1

    e2 e fis fis g1 r1 r2 \bar ":|"
  }
  \addlyrics {
    \set stanza = "1."
    On the banks of the Wil -- lam -- ette
    Folks had dreams 'bout a way to live
    So they rolled up their sleeves
    for com -- mun -- i -- ty Co -- Ho 
    \break
    Co -- Ho where we want to go -- oh
    Co -- Ho it's a place you know -- oh
    Shar -- ing in our home
  }
  \addlyrics {
    \set stanza = "2."
    Let the rain fall up -- on the land
    Flow on down to come back a -- gain
    Like the rain soak -- in' in
    we're here in the end Co -- Ho
  }
  \addlyrics {
    \set stanza = "3."
    Years pass by and we work as one
    Join our hands to a com -- mon end
    Here with joy in our hearts
    bring life to a dream Co -- Ho
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

