\version "2.12.0"
\include "english.ly"
\header {
 title="The Stars and Stripes Forever."
 composer="JOHN PHILIP SOUSA."

 mutopiatitle = "The Stars and Stripes Forever"
 mutopiacomposer = "SousaJP"
 mutopiainstrument = "Piano"
 date = "1896"
 source = "The John Church Company"
 style = "Classical"
 maintainer = "Benjamin Bloomfield"
 maintainerEmail = "bhb123@gmail.com"
 license = "Public Domain"
 lastupdated = "2005/October/30"

 footer = "Mutopia-2005/11/09-626"
 copyright = ""
 tagline = ""

}

\paper {
	ragged-last-bottom=##t
	ragged-bottom=##t
%	paper-width = 8.5\in
%	paper-height = 11\in
	between-system-padding = #0
}

     theChords = \new ChordNames { 
	\set chordChanges = ##t
	\chordmode {
       r1 | r | cf | bf


\repeat volta 2
{
	ef2 g:m/d | c:m f:7m/c | bf/d f/c | bf1 |
        ef | ef2 g:/d | c1:m | g |
        ef1 | ef | bf | bf | ef | ef | f:7 
}
\alternative {
      { bf } { bf }
}

\repeat volta 2
{
   ef1  | bf | bf| ef | af | f:/a | ef:/bf | bf | ef | bf |
    bf | ef2 ef:7 | af af:m | ef1:/bf | bf:7
} 
\alternative {
      { ef } { ef2 ef:7 }
}

{
af1 | af | af | af | af | af | ef:7 | ef:7 | ef:7 | ef:7 | ef:7 | ef:7 | af | df | ef | ef |
af | af | af | af | c:7/e| c:7/e | f:m | f:m | ff | ff | af:/ef | af:/ef | af:/ef | af:/ef |  ef:7
       af1 
}
\repeat volta 2
{
r1 | r1 | r2 bf:m |  c1 |  r1 |  r |  r2 df |  c1 |  r |  r |  r |  r |  r |  
 r |  r |  r |  df:m |  ef:7 |  df:m |  ef:7 |  r |  r |  r |  r |  
af1 | af | af | af | af | af | ef:7 | ef:7 | ef:7 | ef:7 | ef:7 | ef:7 | af | df | ef | ef |
af | af | af | af | c:7/e| c:7/e | f:m | f:m | ff | ff | af:/ef | af:/ef | af:/ef | af:/ef |  ef:7
}
\alternative {
      { af1 } { af1 }
}

     } }

     upper = \relative c'' {
       \clef treble
       \key ef \major
       \time 2/2

	ef2^^ d4. ef8 | c4 ef2^^ f,4 | gf^^ g^^ af^^ a^^ |
	bf^^ r bf2


\repeat volta 2
{
	g4^^ r8 g g4 g | g r8 g8 af4 af |
\break

 f8[( e) f-. g-.] f4-. ef-. |
	\acciaccatura ef8 d4-. c-. d-. bf-. |  bf'^^ r8 bf bf4 bf

	bf r8 bf b4 b | c8^>[( b) c-. ef-.] d4^> c | b2. b4 |
	bf r8 bf ef4-. r8 c-. | bf4-. a-. bf-. g-. | f^> \stemUp bf,8^>[_( a] bf[ a] bf4)

	\stemDown f'4^> \stemUp bf,8^>[_( a] bf[ a] bf4) |
	\stemNeutral bf' r8 bf-. ef4-. r8 c-. | bf4-. a-. bf-. gf-. | f^^ \phrasingSlurDown a,8^>[\( g] a[ g] a4
}
\alternative
{
	{
		bf4\) r bf'2^^
	}
	{
		bf,4 r bf'4.^^( af8)
	}
}


\repeat volta 2
{
	g2 c4.( bf8) | d,2 c | bf af' | g f4.( g8) |
	af4 c2 ef4 | f2 ef | g,1(

	f2) bf4.( af8) | g2 c4.( bf8) | d,2 c | bf af' |
	g f4.( g8) | af4( c f4. ef8) | g,4( bf ef,4. g8)


	f1\(
}
\alternative
{
	{
		ef4\) r bf'4.^^( af8)
	}
	{
		ef4 r ef2
	}
}
\bar "||"
	\key af \major
	ef'2 df4( c) | c2 b4( c) | c1~ | c2 b4^>( c)


	c2 b4^>( c) | ef2 c4.^>( ef8) | df1^( | bf2) bf | bf \stemUp a4^>_( bf) |
	\stemDown bf2 \stemUp a4^>_( bf) | \stemNeutral df1~


	df2 c4( bf) | c ef2.^^ | f f4^( | bf,1)~ | bf2 ef | ef df4( c) | c2 b4( c)


	c1~ | c2 b4^>( c) | c2 b4( c) | df4^( c bf4. g8) | bf1^( | af2) af | af g4^> af


	cf2^( bf4 af) | af'1~ | af4 af,^( bf c | ef8) r af,4^( bf c | ef8) r ef,4^( f c' | bf1)^( af4) r \ottava #-1  af,8^. af^. af^. af^.


\repeat volta 2
{
	af8( g) g^. g^. g( f) f^. f^. | f4^. e^. \ottava #0 f''4^^ e^^ | \ottava #-1 f,,4^. e^. \ottava #0 f''4^^ g^^ | e2 c,8^. c^. c^. c^. | c( bf) bf^. bf^. bf( af) af^. af^.

	af4^^ g^^ af''4^^ g^^ | af,,^^ g^^ af''4^^ bf^^ | g2
	ef,8[^( g bf df] | ff4.^^) ff8^. ff4^. ff^. | ff^. ef^. d^. df^.


	c4 cf bf a | af gf f8[^( a c ef] | gf4.^^) <gf c, bf>8^. <gf c, bf>4^. <gf c, bf>^. |
		<gf c, a>^. f^. e^. ef^. | d^. df^. c^. cf^.

	bf4^. af^. g8[^( bf ef g] | bf4.^^) <bf af ff df>8^. <bf af ff df>4^. <bf af ff df>^. |
		<bf g ef df>^^ <bf g ef df>^^ \stemDown g,8[^( bf ef g] |
		\stemUp bf4.^^) <bf af ff df>8^. <bf af ff df>4^. <bf af ff df>^. | <bf g ef df>^^ <bf g ef df>^^
		g,8[^( bf ef g]


	bf4.^^) bf8( a4.^^) a8( | af?4.^^) af8( g4.^^) g8( |
	gf4.) gf8( f4.^^) f8( | ff4) ef^^ f^^ ef^^
	\bar "||"
	ef2 df4( c) | c2 b4( c)

	c1~ | c2 b4^>( c) | c2 b4^>( c) | ef2 c4.( ef8) |
	df1( | bf2) bf


	bf2 a4^>( bf) | bf2 a4^>( bf) | df1~ | df2 c4 bf |
	c4 ef2. | f^^ f4


	bf,1~ | bf2 ef | ef df4( c) | c2 b4( c) | c1~ |
	c2 b4^>( c)


	c2 b4^>( c) | df( c bf4. g8) | bf1( | af2) af |
	af^( g4 af) | cf2( bf4 af)


	af'1~ | af4 af,( bf c | ef8) r af,4( bf c |
	ef8) r ef,4^( f c' | \phrasingSlurUp bf1)\(
}
\alternative
{
	{
		af4\) r \ottava #-1  af,8^. af^. af^. af^.
	}
	{
		\ottava #0 af'4 r af^> r
	}
}
\bar "|."
     }
     
     lower = \relative c {
       \clef bass
       \key ef \major
       \time 2/2

	<ef ef,>2^^ <d d,>4. <ef ef,>8 | <c c,>4 r <c ef c'>2^^ | <cf ef cf'>2^^ <cf ef cf'>^^ | <bf d f bf>4 r r2


\repeat volta 2
{
	<< \stemUp {c'4\rest <bf g> c\rest <g f> | c\rest <c g ef> c\rest <c af> | c\rest <bf f> a\rest <a f> |
		c\rest <bf f> f'\rest <d bf> | d\rest <ef bf> c\rest <af bf>} \\
	 \stemDown {ef2_> d_> | c f | d_> c_> | bf_> af'_> | g f} >>


	<< \stemUp {c'4\rest <bf g> c\rest <b g> | c\rest <c g> c\rest <g c>} \\
	 \stemDown {ef2 d | c ef} >> |
	g,4 <g' b d> <g b d> <g b d> | ef <g bf?> bf, <g' bf> | ef <g bf> bf, <g' bf> | d <af' bf> bf, <af' bf>


	d, <af' bf> bf, <af' bf> | ef <g bf> bf, <g' bf> | ef <g bf> bf, <bf' ef> | f <c' ef> f, <c' ef>
}
\alternative
{
	{
		<bf d>4 r <bf f d bf>2^^
	}
	{
		<bf d>4 r <bf f d bf>2
	}
}


\repeat volta 2
{
	ef,4 <g bf> bf, <g' bf> | f <af bf> bf, <af' bf> | d, <af' bf> bf, <af' bf> | ef <g bf ef> <g bf ef> <g bf ef> |
	af, <af' c ef> <af c ef> <af c ef> | a, <a' c ef> <a c ef> <a c ef> | bf, <bf' ef> ef,^> <g bf ef>


	d^> <af' bf d> <bf f d bf>2 | ef,4 <g bf> bf, <g' bf> | f <af bf> bf, <af' bf> | d, <af' bf> bf, <af' bf> |
	<< \stemUp { c4\rest <bf g> c\rest <bf g> | c\rest <af ef> c\rest <af ef>} \\
	 \stemDown { ef2 df | c cf} >> |
	bf4 <g' bf ef> <g bf ef> <g bf ef>


	bf, <af' bf d> <af bf d> <af bf d>
}
\alternative
{
	{
		<ef g bf>4 r <bf d f bf>2^^
	}
	{
		<ef g bf>4 r r2
	}
}
\bar "||"
	\key af \major
	af,4^> <af' c ef> <af c ef> ef^> | af,^> <af' c ef> <af c ef> ef^> | af,^> <af' c ef> <af c ef> ef^> |
	af,^> <af' c ef> <af c ef> ef^>


	af,^> <af' c ef> <af c ef> ef^> | af,^> <af' c ef> <af c ef> ef^> | bf^> <g' df' ef> <g df' ef> ef^> |
	bf^> <g' df' ef> <g df' ef> ef^> | bf^> <g' df' ef> <g df' ef> ef^> | bf^> <g' df' ef> <g df' ef> ef^> |
	bf^> <g' df' ef> <g df' ef> ef^>


	bf^> <g' df' ef> <g df' ef> ef^> | af,^> <af' c ef> <af c ef> <af c ef> | df,^> <af' df f> <af df f> <af df f> |
	ef^> <g bf ef> bf,_> <g' bf ef> | g,_> <g' bf ef> ef^> <g bf ef> | af,^> <af' c ef> <af c ef> ef^> |
	af,^> <af' c ef> <af c ef> ef^>


	af,^> <af' c ef> <af c ef> ef^> | af,^> <af' c ef> <af c ef> ef^> | <g g,>_> <bf c e> <bf c e> c,^> |
	<g g'>_> <bf' c e> <bf c e> c,^> | f^> <bf c f> <bf c f> c,^> | f^> <af c f> <af c f> c,^> |
	ff <af df> <af df> <af df>


	ff <af cf> <af cf> <af cf> | ef <c'? ef> af, <c' ef> | c, <c' ef> ef, <c' ef> | c, <c' ef> ef, <c' ef> |
	af <c ef> c <ef af> | g, <df' ef> ef, <df' ef> | <af c ef> r <af af,>^> <af af,>^>

\repeat volta 2
{
	<af af,>4^^( <g g,>8) r <g g,>4^^( <f f,>8) r | <f f,>4^^ <e e,>^^ r2 | <f f,>4^^ <e e,>^^ <df f bf> <df f bf> |
	<c e g c>2 <c c'>4^^ <c c'>^^ | <c c'>( <bf bf'>8) r <bf bf'>4( <af af'>8) r


	<af af'>4^^ <g g'>^^ r2 | <af af'>4^^ <g g'>^^ <ff' af df> <ff af df> | <ef g bf ef>2 r | s1 | s1


	s1 | s2 r4 r4 | s1*3


	s2 r4 r4 | s1 | s2 r2 | s1 | s2 r


	<bf bf'>4. <bf bf'>8( <a a'>4.^^) <a a'>8( | <af? af'?>4.^^) <af af'>8( <g g'>4.^^) <g g'>8( |
	<gf gf'>4.^^) <gf gf'>8( <f f'>4.^^) <f f'>8( | <ff ff'>4) <ef ef'>^^ <f f'>^^ <ef ef'>^^
	\bar "||"
	af4 <af' c ef> <af c ef> ef | af, <af' c ef> <af c ef> ef

	af, <af' c ef> <af c ef> ef | af, <af' c ef> <af c ef> ef | af, <af' c ef> <af c ef> ef |
	af, <af' c ef> <af c ef> ef | bf <g' df' ef> <g df' ef> ef | bf <g' df' ef> <g df' ef> ef


	bf <g' df' ef> <g df' ef> ef | bf <g' df' ef> <g df' ef> ef | bf <g' df' ef> <g df' ef> ef |
	bf <g' df' ef> <g df' ef> ef | af, <af' c ef> <af c ef> <af c ef> | df, <af' df f> <af df f> <af df f>


	ef <g bf ef> bf, <g' bf ef> | g, <g' bf ef> ef <g bf ef> | af, <af' c ef> <af c ef> ef |
	af, <af' c ef> <af c ef> ef | af, <af' c ef> <af c ef> ef | af, <af' c ef> <af c ef> ef


	<g g,> <bf c e> <bf c e> c, | <g g'> <bf' c e> <bf c e> c, | f <bf c f> <bf c f> c, | f <af c f> <af c f> c, |
	ff <af df> <af df> <af df> | ff <af cf> <af cf> <af cf>


	ef <c' ef> af, <c' ef> | c, <c' ef> ef, <c' ef> | c, <c' ef> ef, <c' ef> | af <c ef> c <ef af> |
	g, <df' ef> ef, <df' ef>
}
\alternative
{
	{
		<af c ef> r <af af,>^> <af af,>^>
	}
	{
		<af c ef> r <af, af,>_> r
	}
}
\bar "|."
     }
     
     dynamics = {
	s1\ff | s1*3

	s4\mf s2\< s4\! | s1*4

	s1*2 | s2 s4.\> s8\! | s1\p | s1 | s1\f

	s1 | s1\p | s1 | s1\f | s1 | s2 s2\ff

	s1\ff | s1*6

% begin page 2

	s1*7

	s1 | s2 s2\ff | s2 s2\p | s1\p | s1*3

	s1*7

	s1*7

	s1*3 | s2\< s2\! | s1*3

	s4. s4.\< s4\! | s1 | s4 s2\< s8 s8\! | s4 s2\< s4\! | s4 s4.\< s4.\! | s1*2

% begin page 3

	s1\f | s1*4

	s1*2 | s2 s4.\< s8\! | s1*2

	s1*5

	s1*5

	s2 s4.\< s8\! | s1*2 | s8 s2\< s4.\! | s32 s32*7\ff \once \override TextScript #'extra-offset = #'( -1 . -1.5 )
		s2.^\markup { \italic \fontsize #0 grandioso. } | s1

% begin page 4

	s1*6

	s1*4 | s8 s2\< s4.\! | s1

	s1*6

	s1*6

	s1*7
     }

ticktock = \drummode {
	\repeat unfold 212 {
		snare 2 lowoodblock
		}
	} 
     
     pedal = {
     }
     #(set-global-staff-size 19.5)
     \score {
       <<
       \theChords
       \context PianoStaff <<
         \context Staff=upper \upper
         \context Dynamics=pedal \pedal
       >> >>
       \layout {
         \context {
           \type "Engraver_group"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
           pedalSustainStrings = #'("Ped." "*Ped." "*")
           pedalUnaCordaStrings = #'("una corda" "" "tre corde")
     
           \consists "Piano_pedal_engraver"
           \consists "Script_engraver"
           \consists "Dynamic_engraver"
           \consists "Text_engraver"
     
           \override TextScript #'font-size = #2
           \override TextScript #'font-shape = #'italic
           \override DynamicText #'extra-offset = #'(0 . 2.5)
           \override Hairpin #'extra-offset = #'(0 . 2.5)
     
         %  \consists "Skip_event_swallow_translator"
     
           \consists "Axis_group_engraver"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
           %\override VerticalAlignment #'forced-distance = #6
         }
	\context { 
		\Score
		\remove "Bar_number_engraver"
	}
	
       }
     }
     \score {
	\unfoldRepeats
       \context PianoStaff <<
         \tempo 4=240
       \theChords
         \context Staff=upper << \upper \dynamics >>
       %  \context Staff=lower << \lower \dynamics >>
         \context Dynamics=pedal \pedal
	 \new DrumVoice = "ticktock" { \ticktock } 
       >>
       \midi { 
         \context {
           \type "Performer_group"
           \name Dynamics
           \consists "Piano_pedal_performer"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
         }
       }
     }
