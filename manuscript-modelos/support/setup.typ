// Typst setup for the jumbo flying squid manuscript
// (typography adapted from ONF/data_analysis support/setup.typ)

#show heading: set block(above: 2.5em, below: 1.5em)
#show heading: set text(fill: navy)

// #show smallcaps: set text(font: "Cochin")

#show figure.caption: it => {
  text(
    size: 8.5pt,
    weight: "regular",
    fill: navy,
    it
  )
}

#set par(
  first-line-indent: 0em,
  leading: 1.0em,
  spacing: 1.6em,
  justify: true,
)

#set list(marker: [--])

#set footnote(numbering: "*")
#show footnote.entry: set text(navy)

// Table styling: top & bottom rules, alternating row backgrounds, softer text
#set table(
  fill: (x, y) => if y > 0 and calc.even(y) { luma(242) },
)
#show table: it => block(
  stroke: (top: 0.9pt + black, bottom: 0.9pt + black),
  inset: 0pt,
)[
  #set par(justify: false)
  #set text(size: 9.5pt, hyphenate: false)
  #it
]

// Running header/footer — adapted for this report (was ONF-specific in the source)
#set page(header: context {
  if counter(page).get().first() > 1 [
    #h(1fr)
    Jumbo flying squid · SPRFMO multi-model risk analysis
  ]
})

#set page(footer: context [
  CALAMASUR
  #h(1fr)
  #counter(page).display(
    "1/1",
    both: true,
  )
])
