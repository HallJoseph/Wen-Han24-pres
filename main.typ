// Set up and imports
#let date = datetime.today().display()

#import "@preview/polylux:0.4.0": *

// Make the paper dimensions fit for a presentation and the text larger
#set page(
  paper: "presentation-4-3", 
  footer: text(size: 15pt, [
    Joseph Hall #h(1fr) | #h(1fr) Astro Lunch #h(1fr) | #h(1fr) #date #h(1fr) | #h(1fr) *#toolbox.slide-number*
    ])
    )
#set text(size: 25pt, font: "helvetica")


#slide[

  #set page(
    footer: text(
      size: 25pt,
      style: "normal",
      [
        Joseph Hall #h(1fr) #date
      ]
    )
  )
  #[
    #set align(horizon)
    #[
      #set text(size:50pt, weight: "black")
      A Catalogue of 1.58 Million Clusters of Galaxies from the DESI Legacy Survey
    ]

    #[
      #set text(size: 30pt, style: "italic")
      Z . L. Wen and J. L. Han (2024)
    ]
  ]

  #v(1fr)
]

#slide[
  #outline(
    depth: 1,
    title: "Outline"
  )
]

#slide[
  
]

#slide[
  = Why do we (I) care?
]
