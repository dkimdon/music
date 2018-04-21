MIDI=it-was-a-lover-and-his-lass.midi

default: all soprano soprano-2 tenor

%: %.cfg $(MIDI)
	timidity -Ow -o $(basename $(MIDI))-$@.wav --verbose -c $@.cfg $(MIDI)
	lame $(basename $(MIDI))-$@.wav $(basename $(MIDI))-$@.mp3
	rm $(basename $(MIDI))-$@.wav

%.midi: %.abc
	abc2midi $*.abc -o $*.midi -RS

%.ps: %.abc
	abcm2ps -O = $*.abc

%.pdf: %.ps
	ps2pdf $*.ps

clean:
	-rm *.mp3
