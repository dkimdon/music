all: score.pdf melody.pdf treble2.pdf treble2-bflat.pdf melody-bflat.pdf bass.pdf score.midi
	xpdf score.pdf &
	timidity score.midi

%.ps: %.abc
	abcm2ps +Q -O = $*.abc

%.abc: %.notes
	(cat header.abc $*.notes) > $*.abc

%-bflat.abc: %.abc
	abc2abc $*.abc -t 2  > $*-bflat.abc

score.abc: header.abc melody.notes treble2.notes bass.notes
	(cat header.abc; echo "V: melody"; cat melody.notes; echo "V: treble2"; cat treble2.notes; echo "V: bass"; cat  bass.notes) > score.abc

midi-input.abc: score.abc
	cat score.abc | sed -e 's/".\{1,2\}"//g' > midi-input.abc
	
score.midi: midi-input.abc
	abc2midi midi-input.abc -o score.midi

%.pdf: %.ps
	ps2pdf $*.ps

%.mp3: %.midi
	timidity -Ow $*.midi
	lame $*.wav $*.mp3

clean:
	-rm *.ps *.pdf *.midi *.mp3 *.wav parade-music-bflat.abc score.abc midi-input.abc

