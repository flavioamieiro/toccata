\version "2.16.2"

melody = \new Voice \relative c' {
  g' c bes e d a' a g e d e < g d >
}

bass = \new Voice \relative c' {
  r  c  r r r r r f, r r r f
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
