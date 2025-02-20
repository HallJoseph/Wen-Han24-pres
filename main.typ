// Set up and imports
#let date = datetime(day: 19, month: 2, year: 2025).display()

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
  #set align(horizon)
  = News?
]

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
  _(In which Joe speed reviews 3.0 older papers)_
]

#slide[
  == Context

  #grid(
    columns: (40%, 1fr),
    column-gutter: (10pt),
    [
      #set align(horizon)
      - Clusters are big, biggest virialised things going
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
    columns: (60%, 1fr),
    column-gutter: (10pt),
    [
      #v(1fr)
      
      - Calibrated a relationship between $r_500$ and $L_(1 #text("Mpc"))$
      - Established *richness* as an optical mass proxy: 
      $
        lambda_(*,500) = L_500 / L_*  E(z)^1.4
      $
      - This is redshift independent & a good proxy

      #v(1fr)
    ],
    [
      #v(1fr)
      #set text(size: 15pt)
      #figure(
        image("assets/richness_mass_proxy.jpg", width: 100%)
      )
      #v(1fr)
    ],
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
  == #cite(<wenClustersGalaxies152022>, form: "prose") -- Extending Deeper
  
  #grid(
      columns: (50%, 1fr),
      column-gutter: 10pt,
      [
        #v(1fr)
        - Takes what they were doing before and uses *DES* to find clusters to \ $z = 1.5$
        - ...
        - Not much else different but proves validity of methods to deeper data

        #v(1fr)
      ],
      [
        #set text(size: 15pt)
        #v(1fr)
        #figure(
          image("assets/wh22_depth.jpeg", width: 100%),
          caption: [
            $i$-band magnitudes of the training sample as a function of redshift. Taken from #cite(<wenClustersGalaxies152022>, form: "prose", supplement: "Fig. 1")
          ]
        ) <fig-thing>
        #v(1fr)
      ]
  )
]

#slide[
  #set align(horizon)
  = The Actual Paper
  _(Trust me, it's *definitely* a pre-print)_
]

#slide[
  == The Initial Data Processing
  #grid(
      columns: (50%, 1fr),
      column-gutter: 10pt,
      [
        #v(1fr)
        - Using *DESI* Legacy Imaging Surveys as the photometric base
        - Same processes as before for finding redshifts, with spectro-$z$ from past work
        - Slight tweak to finding $m_#text("stellar")$, using $r - z_#text("m")$ colour instead of $#text("W1")$ luminosity

        #v(1fr)
      ],
      [
        #set text(size: 15pt)
        #v(1fr)
        #figure(
          image("assets/wh24_redshifts.jpg", width: 100%),
          caption: [
            $z_#text("m")$-band magnitude binned comparisons of spectro- and photo-$z$s. From #cite(<wenCatalog158Million2024>, form: "prose", supplement: "Fig. 1")
          ]
        ) <fig-thing>
        #v(1fr)
      ]
  )
]

#slide[
  == The Initial Data Processing
  #set text(size: 15pt)
  #v(1fr)
  #figure(
    image("assets/wh24_z_comparison.jpg", width: 100%),
    caption: [
      Comparisons of #cite(<wenCatalog158Million2024>, form: "prose") photo-$z$ and those published by DESI in \ #cite(<zhouDESIClusteringGalaxies2021>, form:"prose") without $i$-band mags
    ]
  ) <fig-thing>
  #v(1fr)
]

#slide[
  == Finding Clusters
  #v(1fr)
  - Looking for overdensity in redshifts
  - Take slices on *candidate "BCGs"* defined with half slice thickness:
  $
    Delta z = cases(
      0.04 (1+z) "for" z <= 0.7,
      0.15z - 0.037 "for" z >0.7
    )
  $
  - Only using massive clusters ($M_* >= 10^10 M_#sym.dot.circle$)
  - Use the equations calibrated before to find cluster radii and richness
  - Define a cluster when *$lambda_500 >= 10$ and $N_"gal" >= 6$*
  #v(1fr)
]

#slide[
  == Found Clusters
  #set text(size: 15pt)
      #figure(
        image("assets/DESI_Map.jpg", width: 100%),
        caption: [
          Density map of clusters from #cite(<wenCatalog158Million2024>, form: "prose", supplement: "Fig. 6")
        ]
      )
]  

#slide[
  == Cluster Redshifts
  
  Defined in one of the following ways:
  1. The *spectroscopic* redshift of the BCG, if available
  2. Available spectroscopic redshifts of other galaxies, if within $0.025(1+z)$ of cluster photo-$z$
  3. Unclear, but I think using the average photo-$z$ of members as in #cite(<wenClustersGalaxies152022>, form:"prose")

  #grid(
      columns: (50%, 1fr),
      column-gutter: 10pt,
      [
        #set text(size: 15pt)
        #v(1fr)
        #figure(
          image("assets/wh24_z_hist.jpg", width: 75%)
        )
        #v(1fr)
      ],
      [
        #set text(size: 15pt)
        #v(1fr)
        #figure(
          image("assets/wh24_zCl_verification.jpg", width: 75%)
        )
        #v(1fr)
      ]
  )
  #v(1fr)

  #v(1fr)
]

#slide[
  == Verification
  #v(1fr)
  - Very important step when finding $>800,000$ new clusters
  - Compare results with clusters found and measured using X-ray and SZ observations
  - Good completeness with X-ray -- 82% of eRASS1 clusters detected in sample overlap
  - 95% of SZ clusters overlap (in the ACT catalogue)
  - No verification of cluster properties comparing with these measurements
  #v(1fr)
]

#slide[
  == Verification
  
  But do verify against other optical catalogues:

  #grid(
      columns: (30%, 1fr),
      column-gutter: 10pt,
      [
        #set text(size: 15pt)
        #v(1fr)
        #figure(
          image("assets/wh24_completeness.jpg", width: 100%)
        )
        #v(1fr)
      ],
      [
        #set text(size: 15pt)
        #v(1fr)
        #figure(
          image("assets/wh24_opt_cat_comp.jpg", width: 100%)
        )
        #v(1fr)
      ]
  )
  #v(1fr)
  #v(1fr)
]

#slide[
  == Evolution
  #grid(
      columns: (60%, 1fr),
      column-gutter: 10pt,
      [
        #v(50pt)
        - Apparently, clusters evolve
        - They look at two particular evolutions:
          - Dynamical states
          - BCG growth
        #v(1fr)
        #text("(I maybe didn't get round to reading this bit)", size: 10pt)
      ],
      [
        #set text(size: 15pt)
        #v(1fr)
        #figure(
          image("assets/wh24_relaxation.jpg", width: 100%)
        )
        #v(1fr)
      ]
  )
  #v(1fr)
  #v(1fr)
]

#slide[
  #set align(horizon)
  = Why do _I_ care?
  _(Yeah, why do you? Aren't you an X-ray astronomer?)_
]

#slide[
  == Why I care:
  #set enum(numbering: "a.")
  #v(1fr)
  - My research looks at trying to understand differences in properties based on selection method
  - I have an X-ray catalogue (eRASS)
  - Need an optical and this one is:
    + Really big
    + Really well overlapped with eRASS
  #v(1fr)
]

#slide[
  == Why I care:
  #figure(
    image("assets/WH-eRass_overlap.png")
  )
]

#slide[
  = Summary
  #set enum(numbering: "a.")
  #v(1fr)
  - This is a big catalogue (*1.58 Million!*) with reliable results
  - Methods developed over a decade help to guarantee robustness of results
  - Fantastic for work on cluster population studies
  - Also does stuff with cluster evolution
  #v(1fr)

  == Any Questions?

  #v(1fr)
]


#slide[
  #bibliography("bib.bib", style:"elsevier-harvard")
]

