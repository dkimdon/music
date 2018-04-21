\version "2.10.10"

#(set-default-paper-size "letter")
#(set-global-staff-size 20)

piece = "Finlandia"
title = ""
composer = "Jean Sibelius"
meter = ""
poet = "Lloyds Stone, Cedar Grace, et al."
arranger = ""

world = {
  \key ees \major
  \time 4/4
}

melody = \transpose ees c \relative c'' {
  \world
  s4 g4 f g | aes2. g4 | f4 g ees4. f8 | f4 g2. ( | g4)
  g f g | aes2. g4 | f4 g ees4. f8 | g1( g4) \bar "||"
  bes bes bes | c2. g4 | g4 bes bes4. f8 | f4 aes2.( | aes4)
  aes4 g f | g2. ees4 | ees4 f f4. g8 | g1( | g4) \bar "||"
  bes4 bes bes | c2. g4 | g4 bes bes4. f8 | f4 aes2. ( | aes4)
  aes4 g f | g2. ees4 | ees4 f f4. ees8 | ees1( | ees4) \bar "|."
}


alto = \transpose ees c \relative c' {
  \world
  s4 ees4 d ees | d2. ees4 | d4 ees c4. d8 | d4(ees2.)( ees4)
  ees4 d ees | d2. ees4 | d4 ees ees4. d8 | ees1( | ees4)
  g4 g g | g2. ees4 | ees4 ees ees4. d8 | d4( f2. )( | f4)
  f4 e f | ees2. ees4 | ees4 ees d4. d8 | d1( | d4)
  g4 g g | g2. ees4 | ees4 ees ees4. d8 | d4( f2.)( f4)
  f4 e f | ees2. bes4 | ees4 ees d4. ees8 | ees1( | ees4)
}

tenor = \transpose ees c \relative c' {
  \world
  s4 bes4 bes bes | bes2. bes4 | bes4 bes c4. aes8 | bes1( | bes4)
  bes4 bes bes | bes2. bes4 | bes4 bes c4. aes8 | bes1( | bes4)
  ees4 ees ees | ees2. c4 | c4 bes bes4. bes 8 | bes4( c2. )( | c4)
  c4 bes c | bes2. bes4 | c4 c c b | b1( | b4)
  bes4  ees ees | ees2. c4 | c4 bes bes4. bes8 | bes4( c2.)( | c4)
  c4 bes c | bes2. g4 | g4 aes aes4. g8 | g1( | g4)
}

bass = \transpose ees c \relative c {
  \world
  s4 ees4 aes g | f2. ees4 | aes4 g aes f | f4( ees2.)( | ees4)
  ees4 aes g | f2. ees4 | aes4 g aes4. f8 | ees1( \noBreak | ees4)
  ees4 ees' d | c2. c4 | c4 g g4. bes8 | bes4( f2.)( | f4)
  f4 g aes | bes2. g4 | aes4 aes aes4. g8 | g1( | g4)
  ees4 ees d | c2. c4 | c4 g g4. bes8 | bes4( f2.)( | f4)
  f4 g aes | bes2. bes4 | bes4 bes bes4. bes8 | ees1( | ees4)
}

harmonies = \chordmode {
  s4 c2. g1:7 g:7 c c g:7 g:7 c c a:m c d:m d:m c f e c a:m c d:m d:m c g:7 c
}

verseOne = \lyricmode {
  \set stanza = "1. "
This is my song, a song of all the na -- tions
A song of peace, for lands a -- far and mine
This is my home, the coun -- try where my heart is
Here are my hopes, my dreams, my ho -- ly shrine
But o -- ther hearts in o -- ther lands are bea -- ting
With hopes and dreams as true and high as mine
}

verseTwo = \lyricmode {
  \set stanza = "2. "
My coun -- try's skies are blu -- er than the o -- cean
And sun -- light beams on clo -- ver leaf and pine
But o -- ther lands have sun -- light too, and clo -- ver
And skies are e -- very -- where as blue as mine
O hear my song, this song of all the na -- tions
A song of peace for their land and for mine
}

verseThree = \lyricmode {
  \set stanza = "3. "
The plea -- sant trees and sil -- ver, ri -- pling wa -- ters,
the flow'rs and clouds, the un -- dimmed, sun -- lit sky
and bread by thee, our gra -- cious land is gi -- ven,
We thank -- ful take of thy so rich su -- pply.
And bread by thee, our gra -- cious land is gi -- ven,
We thank -- ful take from thy so rich su -- pply.
}

verseFour = \lyricmode {
  \set stanza = "4. "
We would be one as now we join in sing -- ing,
Our hymn of love, to pledge our -- selves a -- new.
To that high cause of grea -- ter un -- der -- stand -- ing
Of who we are, and what in us is true.
We would be one in liv -- ing for each o -- ther,
to show to all a new com -- mu -- ni -- ty. 
}

verseFive = \lyricmode {
  \set stanza = "5. "
May truth and free -- dom come to e -- very na -- tion
May peace a -- bound where strife has raged so long
That each may seek to love and build to -- ge -- ther
A world un -- i -- ted, righ -- ting e -- very wrong.
A world un -- i -- ted in its love for free -- dom
pro -- claim -- ing peace to -- ge -- ther in one song.
}

\markup {
  \column {
    \fill-line {
	  \caps \composer      % composer
          \bold \piece
      \small \caps \poet % poet
  }
  }
}

\score {
  \context ChoirStaff <<
 \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }

    \context Staff = upper <<
      \context Voice =
         sopranos { \voiceOne << \melody >> }
  %    \context Voice =
  %       altos { \voiceTwo << \alto >> }
      \context Lyrics = one \lyricsto sopranos \verseOne
      \context Lyrics = two \lyricsto sopranos \verseTwo
      \context Lyrics = three \lyricsto sopranos \verseThree
      \context Lyrics = four \lyricsto sopranos \verseFour
      \context Lyrics = five \lyricsto sopranos \verseFive
    >>
  %  \context Staff = men <<
   %   \clef bass
  %    \context Voice =
  %      tenors { \voiceOne << \tenor >> }
  %    \context Voice =
  %      basses { \voiceTwo << \bass >> }
  %  >>
  >>
  \layout {
    \context {
      \Score
      % **** Turns off bar numbering
      \remove "Bar_number_engraver"
    }
    \context {
      \Lyrics
      % **** Prevents lyrics from running too close together
      \override LyricSpace #'minimum-distance = #0.6
      % **** Makes the text of lyrics a little smaller
%      \override LyricText #'font-size = #-1.70
      \override LyricText #'font-size = #1.9
      % **** Moves lines of lyrics closer together
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    }
  }
 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }
}
