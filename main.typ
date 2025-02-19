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
  == Context

  #grid(
    columns: (40%, 1fr),
    column-gutter: (10pt),
    [
      #set align(horizon)

      - We need to be able to find and characterise clusters
      - This is an optical approach
      - Culmination of over a decade of work

    ],
    [
      #set text(size: 15pt)
      #v(1fr)
      #figure(
        image("assets/DESI_Map.jpg"),
        caption: [
          Density map of clusters from #cite(<wenCatalog158Million2024>, form: "prose", supplement: "Fig. 6")
        ]
      )
      #v(1fr)
    ]

  )

]

#slide[
  == #cite(<wenCalibrationOpticalMass2015>, form: "prose") -- Calibration
  #grid(
    columns: (40%, 1fr),
    column-gutter: (10pt),
    [
      #v(1fr)
      #set text(size: 15pt)
      #figure(
        image("assets/wen-han15-cover.svg", width: 100%)
      )
      #v(1fr)
    ],
    [
      #v(1fr)
      
      - Calibrated a relationship between $r_500$ and $L_(1 #text("Mpc"))$
      - Established *richness* as an optical mass proxy: 
      $
        lambda_(*,500) = L_500 / L_*  E(z)^1.4
      $
      - This is redshift independent & a good proxy

      #v(1fr)
    ]
  )
]

#slide[
  == #cite(<wenPhotometricRedshiftsGalaxies2021>, form: "prose") -- Redshifts
  
  #grid(
      columns: (70%, 1fr),
      column-gutter: 10pt,
      [
        #v(1fr)
        - Combines spectroscopic and multi-band imaging surveys
        - Places galaxies with spectro-$z$ in colour space
        - Uses a *nearest neighbour* algorithm to estimate the photo-$z$ of galaxies only in imaging survey

        #v(1fr)
      ],
      [
        #v(1fr)
        #figure(
          image("assets/redshift proof.jpeg", width: 100%)
        ) <fig-thing>
        #v(1fr)
      ]
  )
]

#slide[
  == #cite(<wenPhotometricRedshiftsGalaxies2021>, form: "prose") -- Masses
  
  #grid(
      columns: (70%, 1fr),
      column-gutter: 10pt,
      [
        #v(1fr)
        - Links stellar mass and luminosity: 
        $
          log (m_#text("stellar") / M_#sym.dot.circle) = gamma log (L_#text("W1")/L_*) \ + f(z, Z)
        $

        - Uses this to get a mass based *richness* similar to #cite(<wenCalibrationOpticalMass2015>, form: "prose"):

        $
          lambda_500 = m_(500,#text("stellar")) (1+z)^0.21 / m_(*,#text("stellar"))
        $

        #v(1fr)
      ],
      [
        #v(1fr)
        #figure(
          image("assets/wh21_masses.png", width: 100%)
        ) <fig-thing>
        #v(1fr)
      ]
  )
]

#slide[
  = Why do we (I) care?
]

#slide[
  #bibliography("bib.bib", style:"elsevier-harvard")
]

