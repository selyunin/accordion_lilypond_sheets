\version "2.18.2"
\include "deutsch.ly"

#(set-global-staff-size 20.0)

\header {
  title     = \markup \bold \italic "Concerto in Re maggiore per 2 Violini, Liuto e Basso continuo"
  subtitle  = \markup \bold \italic "RV 93"
  composer  = "Antonio Vivaldi"
  arranger  = "Arr. by K.Selyunin"
  enteredby = "selyunin (2017-04-09)"
  piece     = ""
  tagline   = ##f  % removed 
}

accoBassRef = #(define-music-function
     (parser location firstNote secondNote)
     (ly:music? ly:music?)
      #{
        \afterGrace
        $firstNote
        {
          \once \override Stem.stencil = ##f
          \once \override Flag.stencil = ##f
		  \once	\override ParenthesesItem.font-size = #+1
		  \once	\override ParenthesesItem.X-extent = #'(0.5 . 0.5)
		  \once	\override Score.GraceSpacing.spacing-increment = #1.2
          \parenthesize $secondNote
        }
      #}
     )

voiceconsts = {
  \key d \major
  \time 4/4
%  \numericTimeSignature
  \compressFullBarRests
  % Set default beaming for all staves
%  \set Timing.beamExceptions = #'()
%  \set Timing.baseMoment     = #(ly:make-moment 1 4)
%  \set Timing.beatStructure  = #'(1 1 1)
  %\tempo "Allegro " 4=160 % 
}

\include "I_allegro_right_hand.ily"
\include "I_allegro_left_hand.ily"

music =   
	  \new PianoStaff = "accordion" <<
		\set PianoStaff.instrumentName = #"Accordion "
		\new Staff = "right_hand" { 
      %\partcombine 
		  \I_allegro_right_hand_upper_voice 
		  %\I_allegro_right_hand_lower_voice 
		}
		\new Staff = "left_hand" { 
		  \I_allegro_left_hand
		}
	  >>

\book {
 \paper {
    print-all-headers = ##t
  }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Generating sheet music
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \score {
    \music
    \header {
      title     = \markup \bold \italic \smaller \smaller "Allegro I"
      subtitle  = ##f
      opus      = ##f
	  composer  = ##f
	  arranger  = ##f
	  enteredby = ##f
	  piece     = ##f
    }
    \layout {}
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Generating midi file
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \score {
  <<
	\new Staff <<
	  \new Voice  \with {midiInstrument = #"accordion"} \unfoldRepeats \I_allegro_right_hand_upper_voice 
	  \new Voice  \with {midiInstrument = #"accordion"} \unfoldRepeats \I_allegro_right_hand_lower_voice 
	  \new Voice  \with {midiInstrument = #"oboe" }     \unfoldRepeats \I_allegro_left_hand
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
