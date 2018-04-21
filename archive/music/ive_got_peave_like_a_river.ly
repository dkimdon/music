\version "2.10.33"

\header {
  title = "I've Got Peace Like a River"
  composer = "Traditional"
}

Chords = \chordmode {
  \partial 1 r4 c1
  f2 c2
  c1 g2:7 
  f2 c1 f2 c2 c2 g2:7 c4 f4 c4
}

\score{

  << 

  \tempo 4 = 90

  \new ChordNames {
    \set chordChanges = ##t
    \Chords
  }
  \relative c' {
    \time 4/4
    \key c \major

    \partial 4 g8 a8 c4 e8. e16 d8 c8 
    c c c4 a'8. a16 g8 ( e8 ) c4
    e4 e8. e16 d8 c c8 c d2.
    a8 c8 c4 e8. e16 d8 c8 
    c c c4 a'8. a16 g8 ( e8 ) c4
    e4 e8. e16 d8 d c8 b8 c2. \bar ":|"
  }
  \addlyrics {
    \set stanza = "1."
    I've got peace like a riv -- er,
    I've got peace like a riv_ -- er,
    peace like a riv -- er in my soul.
    And it flows like a riv -- er,
    And it flows like a riv -- er,
    flows like a riv -- er in my soul.
  }
  \addlyrics {
    \set stanza = "2."
    I've got love like an o -- cean,
    I've got love like an o -- cean,
    love like an o -- cean in my soul.
    And it flows like an o -- cean,
    And it flows like an o -- cean,
    flows like a o -- cean in my soul.
  }
  \addlyrics {
    \set stanza = "3."
    I've got joy like a foun -- tain,
    I've got joy like a foun -- tain,
    joy like a foun -- tain in my soul.
    And it flows like an foun -- tain,
    And it flows like an foun -- tain,
    flows like a foun -- tain in my soul.
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

