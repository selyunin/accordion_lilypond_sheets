SOURCE=jingle_bells
LILYPOND_FLAGS= --pdf

all:
	lilypond ${LILYPOND_FLAGS} -o ${SOURCE} ${SOURCE}.ly

view:
	evince ${SOURCE}.pdf &

clean:
	rm -rf ${SOURCE}.pdf ${SOURCE}-* ${SOURCE}.eps ${SOURCE}.midi

