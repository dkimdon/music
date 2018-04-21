all: fuga-bwv578-eminor.pdf fuga-bwv578-v1-eminor.pdf \
	fuga-bwv578-v2-v4-eminor.pdf  fuga-bwv578-v3-eminor.pdf \
	fuga-bwv578-eminor.midi

%.ps: %.abc common.fmt
	abcm2ps -O = -F common.fmt $*.abc

%.pdf: %.ps
	ps2pdf $*.ps

%.pdf: %.ly
	lilypond $*.ly

%.png: %.ly
	lilypond --png --define-default=resolution=300 $*.ly

%.mp3: %.midi
	timidity -Ow $*.midi
	lame $*.wav $*.mp3

%.pdf: %.lytex
	lilypond-book $*.lytex
	latex $*.tex
	dvips -Ppdf $*.dvi
	ps2pdf $*.ps

%.pdf: %.abc
	abcm2ps -O= -c $*.abc
	ps2pdf $*.ps
	rm $*.ps

%.midi: %.abc
	abc2midi $*.abc -o $*.midi -RS

%-eminor.abc: %.abc
	abc2abc $*.abc -t -3 > $*-eminor.abc

clean:
	-rm *eminor* *.ps *.pdf *.midi

practice: fuga-bwv578-eminor.midi
	timidity -x'bank 0\n1 Tone_000/040_Violin.pat amp=100\n2 Tone_000/021_Accordion.pat amp=40\n3 Tone_000/042_Cello.pat amp=40\n4 Tone_000/021_Accordion.pat amp=40' \
	-T 80 \
	fuga-bwv578-eminor.midi -Ow -o fuga-bwv578-v1-eminor-80.wav
	lame fuga-bwv578-v1-eminor-80.wav fuga-bwv578-v1-eminor-80.mp3
	rm fuga-bwv578-v1-eminor-80.wav

	timidity -x'bank 0\n1 Tone_000/040_Violin.pat amp=100\n2 Tone_000/021_Accordion.pat amp=40\n3 Tone_000/042_Cello.pat amp=40\n4 Tone_000/021_Accordion.pat amp=40' \
	-T 60 \
	fuga-bwv578-eminor.midi -Ow -o fuga-bwv578-v1-eminor-60.wav
	lame fuga-bwv578-v1-eminor-60.wav fuga-bwv578-v1-eminor-60.mp3
	rm fuga-bwv578-v1-eminor-60.wav

	timidity -x'bank 0\n1 Tone_000/040_Violin.pat amp=100\n2 Tone_000/021_Accordion.pat amp=40\n3 Tone_000/042_Cello.pat amp=40\n4 Tone_000/021_Accordion.pat amp=40' \
	-T 100 \
	fuga-bwv578-eminor.midi -Ow -o fuga-bwv578-v1-eminor.wav
	lame fuga-bwv578-v1-eminor.wav fuga-bwv578-v1-eminor.mp3
	rm fuga-bwv578-v1-eminor.wav

	timidity -x'bank 0\n1 Tone_000/040_Violin.pat amp=40\n2 Tone_000/021_Accordion.pat amp=100\n3 Tone_000/042_Cello.pat amp=40\n4 Tone_000/021_Accordion.pat amp=100' \
	-T 100 \
	fuga-bwv578-eminor.midi -Ow -o fuga-bwv578-v2v4-eminor.wav
	lame fuga-bwv578-v2v4-eminor.wav fuga-bwv578-v2v4-eminor.mp3
	rm fuga-bwv578-v2v4-eminor.wav


