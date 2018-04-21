MIDI=if-music-be-the-food-of-love.midi

default: all soprano alto tenor bass

%: %.cfg $(MIDI)
	timidity -Ow -o $(basename $(MIDI))-$@.wav --verbose -c $@.cfg $(MIDI)
	lame $(basename $(MIDI))-$@.wav $(basename $(MIDI))-$@.mp3

%.midi: %.abc
	abc2midi $*.abc -o $*.midi -RS

%.ps: %.abc
	abcm2ps -O = $*.abc

%.pdf: %.ps
	ps2pdf $*.ps

clean:
	-rm *.wav *.mp3 *.pdf
