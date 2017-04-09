music_right_hand_upper_voice = \relative c' {
  \voiceconsts
  \clef "treble"

  % 1
  d4 h' a g |
  d2. d8 d |
  d4 h' a g |
  e1|
  e4 c' h a |
  fis1|
  d'4 d c a |

  % 8
  h1|
  d,4 h' a g |
  d1 |
  d4 h' a g |
  e2. e4|
  e4 c' h a |
  d d d d |
  
  % 16
  e d c a |
  g2 r2 |
  \repeat volta 2 {
  h4 h h2 |
  h4 h h2 |
  h4 d g,4. a8 |
  h1 |
  c4 c c4. c8 |

  % 24
  c4 h h h8 h |}
  \alternative {
  {
  h4 a a h |
  a2 d | }
  { 
  d4 d c a  |
  g1\fermata \bar "|." }
  }

}

music_right_hand_lower_voice = \relative c' {
  \voiceconsts
  \clef "treble"

  % 1
  h4 d c d |
  h2. h8 h |
  h4 d c d |
  c1|
  a4 e' d c |
  d1|
  a'4 a fis d |

  % 8
  g1|
  h,4 d c d |
  h1 |
  h4 d c d |
  c2. c4|
  c4 e d c |
  <a' fis> <a fis> <a fis> <a fis> |

  % 16
  a2 fis |
  <d h>2 r2 |
  \repeat volta 2 {
  <d g>4 <d g> <d g>2 |
  <d g>4 <d g> <d g>2 |
  <d g>4 <g h> <h, d>4. <c e>8 |
  <d g>1 |
  <e g>4 <e g> <e g>4. <e g>8 |

  % 24
  <e g>4 <d g> <d g> <d g>8 <d g> |}
  \alternative {
  {
	<d g> 4 <c e> <c e> <d g>  |
	<d fis>2 <fis a> | }
  { 
	<fis a>4 <fis a> <fis a> <d fis>  |
	<h d>1 \bar "|." }
  }

}
