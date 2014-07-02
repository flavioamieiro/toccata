\version "2.16.2"

melody = \new Voice \relative c' {
  g' c bes e d a' a g e d e < g, d' >
  g c bes e d a' a g g f e < f d >
  f f e d c d d d c bes a a
  g a bes a bes c bes c d
  c d e d e f e f g r fis r < d g >
}

bass = \new Voice \relative c' {
  r c r r r r r f, r r r g
  r c r r r r r bes r r r d
  r r r r r bes r r r r r a
  r r bes r r b r r c
  r r cis r r d r r dis g d g < g, bes' >
}

\header {
  title = ""
  composer = ""
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
  top-margin = 3\cm
  right-margin = 1.5\cm
  print-page-number = ##t
  print-first-page-number = ##t
}

\score{
  {
    \new Staff <<
      \key f \major
      \melody
      \bass
    >>
  }
  \layout{}
}
