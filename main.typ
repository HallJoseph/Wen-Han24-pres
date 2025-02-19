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
#set text(size: 30pt, font: "helvetica")


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

// #slide[
//   #outline(
//     depth: 1,
//     title: "Outline"
//   )
// ]

#slide[
  #set align(horizon)
  = Background
]

#slide[
  = Background
  
  #grid(
    columns: (33%, 1fr),
    column-gutter: (10pt),
    [
      #set text(size: 15pt)
      #figure(
        image("assets/wen-han15-cover.svg", width: 100%),
        caption: [
          #cite(<wenCalibrationOpticalMass2015>, form: "prose")
        ]
      )
    ],
    [
      #set text(size: 15pt)
      #figure(
        image("assets/wen-han21-cover.svg", width: 100%),
        caption: [
          #cite(<wenPhotometricRedshiftsGalaxies2021>, form: "prose")
          ]
      )
    ],
    [
      #set text(size: 15pt)
      #figure(
        image("assets/wen-han22-cover.svg", width: 100%)
      )
    ]
  )

  

]

#slide[
  = Background
  #grid(
      columns: (50%, 1fr),
      column-gutter: 1pt,
      [
        #figure(
          image("assets/wen-han22-cover.svg", width: 100%),
          caption: [This is an example.]
        ) <fig-thing>
      ],
      [
        See @fig-thing.

        #lorem(40)
      ]
  )


]

#slide[
  = Why do we (I) care?
]

#slide[
  #bibliography("bib.bib", style:"elsevier-harvard")
]

