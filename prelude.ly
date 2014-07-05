\version "2.16.2"

melody = \new Voice \relative c' {
  \tempo 4 = 92

  \partial 4 g'4
  c bes e d |  a'2. a4 | g e d e |
  < g, d' >2. g4 | c bes e d | a'2. a4 | g g f e |
  < f d >2. f4 | f e d c | d2. d4 | d c bes a |

  \time 3/4
  a g a | bes a bes | c bes c | d c d | e d e | f e f |

  \tempo 4 = 50
  g2( < g g, >4) | fis2( < fis g, >4) | < bes, d g >2.
}

bass = \new Voice \relative c' {
  \partial 4 r4
  c1 | c | f, | g |
  c | c | bes | d |
  d | bes | bes

  \time 3/4
  a2. bes b c cis d dis d g,
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
  \new Staff <<
    \key f \major
    \melody
    \bass
  >>

  \layout{}
  \midi {
    \set Staff.midiInstrument = #"guitar"
  }
}
