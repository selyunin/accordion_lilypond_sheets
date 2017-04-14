music_left_hand = \relative c' {
  \voiceconsts
  \clef "bass"
  
  g,4 <g' h d>^Maj c, \accoBassRef q g |
  g4 <g' h d>8 q  g,4 q |
  g4  <g' h d> e _B \accoBassRef q g, |
  c4 <g' c e>8^Maj q  c,4 q |
  c4 <g' c e>  h, _B a _B |
  d4 <fis a d>8^Maj q  d4 q |
  d4 <fis a d> d q  |
  g,4 <g' h d>8 q  g,4 q |
  g4 <g' h d>^Maj c, \accoBassRef q g |
  g4 <g' h d>8 q  g,4 q |
  g4  <g' h d> e _B \accoBassRef q g, |
  c4 <g' c e>8^Maj q  c,4 q |
  c4 <g' c e>   g,4 \accoBassRef q c |
  d4 <fis a d> d q  |
  \accoBassRef <fis a d>4 d r q r  |
  g,2 r2 |
  \repeat volta 2 {
  \accoBassRef <g' h d>4 g, q q2 |
  \accoBassRef <g' h d>4 g, q q2 |
  g4 h _B \accoBassRef <g' h d>4. g, \accoBassRef <g' c e>8 c, |
  g4 <g' h d>  g, q |
  \accoBassRef <g' c e>4 c, q q4. q8 | 
  \accoBassRef <g' c e>4 c, \accoBassRef <g' h d>4 g, q q8 q | 
  }
  \alternative {
  {
  \accoBassRef <g' h d>4 g, \accoBassRef <g' c e>4 c, q \accoBassRef <g' h d>4 g, | 
  d'2 <fis a d>  |
  }
  {
  d4 <fis a d> d q  |
  <g, g' h d>1 \fermata \bar "|."}
  }
}
