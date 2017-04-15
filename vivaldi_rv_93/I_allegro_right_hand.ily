I_allegro_right_hand_upper_voice = \relative c' {
  \voiceconsts
  \clef "treble"
  \tempo "Allegro guisto" 4=140 % 

  % 1
  fis'32-(e d8.-) fis32-( e d8.-) a'8 a, a a |
  fis'32-(e d8.-) fis32-( e d8.-) a'8 a, a a |
  a'32-(g fis8.-) a32-(g fis8.-) e4 r4 |
  a32-(g fis8.-) a32-(g fis8.-) d32-(cis h8.-) d32-(cis h8.-) |

  %5
  g'32-(fis e8.-) g32-(fis e8.-) cis32-(h a8.-) cis32-(h a8.-) |
  fis'4 r8 f8 f-( e-) e f16 g |
  f8 d d f f e e f16 g  |
  f8 d d d es es e e  |

  %9
  f8 f fis fis g g gis gis |
  a8 r a r a r r g |
  fis16 g a fis e fis g e fis g a fis e fis g e |
  d4 r8  d8 fis32 e d8. a'32 g fis8. |

  %13
  e8 a, a a e'32 d cis8. g'32 fis e8. |
  fis8 d d a' h32 a g8. h32 a g8. |
  e16 cis cis cis e cis cis cis a'32 g fis8. a32 g fis8. |
  d16 h h h d h h h g'32 fis e8. g32 fis e8. |

  %17
  fis32 e d8. fis32 e d8. gis32 fis e8. gis32 fis e8. |
  a4 r4 r2 |

  %d2. d8 d |
  %d4 h' a g |
  %e1|
  %e4 c' h a |
  %fis1|
  %d'4 d c a |

  %% 8
  %h1|
  %d,4 h' a g |
  %d1 |
  %d4 h' a g |
  %e2. e4|
  %e4 c' h a |
  %d d d d |
  
  % 16
  %e d c a |
  %g2 r2 |
  %\repeat volta 2 {
  %h4 h h2 |
  %h4 h h2 |
  %h4 d g,4. a8 |
  %h1 |
  %c4 c c4. c8 |

  % 24
  %c4 h h h8 h |}
  %\alternative {
  %{
  %h4 a a h |
  %a2 d | }
  %{ 
  %d4 d c a  |
  %g1\fermata \bar "|." }
  %}

}

I_allegro_right_hand_lower_voice = \relative c' {
  \voiceconsts
  \clef "treble"

  % 1
  r1 |
  %h2. h8 h |
  %h4 d c d |
  %c1|
  %a4 e' d c |
  %d1|
  %a'4 a fis d |

  % 8
  %g1|
  %h,4 d c d |
  %h1 |
  %h4 d c d |
  %c2. c4|
  %c4 e d c |
  %<a' fis> <a fis> <a fis> <a fis> |

  % 16
  %a2 fis |
  %<d h>2 r2 |
  %\repeat volta 2 {
  %<d g>4 <d g> <d g>2 |
  %<d g>4 <d g> <d g>2 |
  %<d g>4 <g h> <h, d>4. <c e>8 |
  %<d g>1 |
  %<e g>4 <e g> <e g>4. <e g>8 |

  % 24
  %<e g>4 <d g> <d g> <d g>8 <d g> |}
  %\alternative {
  %{
	%<d g> 4 <c e> <c e> <d g>  |
	%<d fis>2 <fis a> | }
  %{ 
	%<fis a>4 <fis a> <fis a> <d fis>  |
	%<h d>1 \bar "|." }
  %}

}
