
all: $(subst .abc,.ps,$(wildcard *.abc)) $(subst .ly,.pdf,$(wildcard *.ly))

SCALE=0.90
FORMAT=common

%.ps: %.abc $(FORMAT).fmt
	abcm2ps -s $(SCALE) -O = -F $(FORMAT).fmt $*.abc
	#abcm2ps -s $(SCALE) -O = $*.abc

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

%.midi: %.abc
	abc2midi $*.abc -o $*.midi -RS

clean:
	-rm *.ps *.pdf *.midi *.mp3 *.wav *.aux *.dvi *.log *.dep *.tex
	-rm over_the_waterfall-bc.abc glass_island_reel-bc.abc \
		scollays_reel-bc.abc red_haired_boy-bc.abc liberty-bc.abc \
		old_joe_clark-bc.abc spootiskerry-bc.abc

liberated_joe.abc: liberty.abc old_joe_clark.abc
	cat liberty.abc old_joe_clark.abc > liberated_joe.abc

red_haired_waterfall.abc: red_haired_boy.abc over_the_waterfall.abc
	cat red_haired_boy.abc over_the_waterfall.abc > red_haired_waterfall.abc

scollays_glass.abc: scollays_reel.abc glass_island_reel.abc
	cat scollays_reel.abc glass_island_reel.abc > scollays_glass.abc

BC_DROP=24


over_the_waterfall-bc.abc: BC_DROP=24
glass_island_reel-bc.abc:  BC_DROP=24
scollays_reel-bc.abc: BC_DROP=24
red_haired_boy-bc.abc: BC_DROP=24
liberty-bc.abc: BC_DROP=24
old_joe_clark-bc.abc: BC_DROP=24
saint_annes_reel-bc.abc: BC_DROP=24
spootiskerry-bc.abc: BC_DROP=24


%-bc.abc: %.abc
	abc2abc $< -t -$(BC_DROP) > $@.tmp
	sed -e 's/^\(K.*\)/\1 clef=bass/' < $@.tmp > $@
	rm $@.tmp

DANCE_TUNES=liberated_joe red_haired_waterfall scollays_glass saint_annes_reel wizards_walk expectation crested_hens spootiskerry

dance: $(addsuffix .pdf,$(DANCE_TUNES))
dance-bc: $(addsuffix -bc.pdf,$(DANCE_TUNES)) 

liberated_joe-bc.abc: liberty-bc.abc old_joe_clark-bc.abc
	cat liberty-bc.abc old_joe_clark-bc.abc > liberated_joe-bc.abc

red_haired_waterfall-bc.abc: red_haired_boy-bc.abc over_the_waterfall-bc.abc
	cat red_haired_boy-bc.abc over_the_waterfall-bc.abc > red_haired_waterfall-bc.abc

scollays_glass-bc.abc: scollays_reel-bc.abc glass_island_reel-bc.abc
	cat scollays_reel-bc.abc glass_island_reel-bc.abc > scollays_glass-bc.abc
