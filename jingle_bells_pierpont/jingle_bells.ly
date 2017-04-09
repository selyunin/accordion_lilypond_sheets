\version "2.18.2"
\include "deutsch.ly"

#(set-global-staff-size 20.0)

\header {
  title     = \markup \bold \italic "Jingle Bells"
  composer  = "James Lord Pierpont"
  arranger  = "(Written by K.Selyunin)"
  enteredby = "selyunin (2017-04-09)"
  piece     = ""
  tagline   = ""  % removed 
}

voiceconsts = {
  \key g \major
  \time 4/4
%  \numericTimeSignature
  \compressFullBarRests
  % Set default beaming for all staves
%  \set Timing.beamExceptions = #'()
%  \set Timing.baseMoment     = #(ly:make-moment 1 4)
%  \set Timing.beatStructure  = #'(1 1 1)
  \tempo "Allegro " 4=160 % 
}

\include "score_right_hand.ily"
\include "score_left_hand.ily"

music =   
	  \new PianoStaff = "accordion" <<
		\set PianoStaff.instrumentName = #"Accordion "
		\new Staff = "right_hand" { 
      \partcombine 
		  \music_right_hand_upper_voice 
		  \music_right_hand_lower_voice 
		}
		\new Staff = "left_hand" { 
		  \music_left_hand
		}
	  >>

\book {
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Generating sheet music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \score {
    \music
    \layout {}
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Generating midi file
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \score {
  <<
	\new Staff <<
	  \new Voice  \with {midiInstrument = #"accordion"} \unfoldRepeats \music_right_hand_upper_voice
	  \new Voice  \with {midiInstrument = #"accordion"} \unfoldRepeats \music_right_hand_lower_voice
	  \new Voice  \with {midiInstrument = #"clav" } \unfoldRepeats \music_left_hand
	>>
  >>
	\midi {
	  \context {
		\Staff
		\remove "Staff_performer"
	  }
	  \context {
		\Voice
		\consists "Staff_performer"
	  }
	}
  }
}
