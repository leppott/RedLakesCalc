# Mark Exclude Taxa Panel

function() {
  sidebarLayout(
    sidebarPanel(
      h2("Mark Redundant Taxa")
      , p("1. Upload a file.")
      , p("Use 'Load Data' option in left sidebar.")
      , p("2. Define columns (Sample ID, Taxa ID, Count).")
      , uiOutput("UI_col_markexcl_SampID")
      , uiOutput("UI_col_markexcl_TaxaID")
      , uiOutput("UI_col_markexcl_Count")
      , textInput("markexcl_Exclude"
                  , label = "Redundant Column"
                  , value = "Redundant")
      , p("3. TaxaLevels")
      , p("TaxaLevels (if present) are used in the order below.")
      , p("Kingdom, Phylum, SubPhylum, Class, SubClass
                           , Order, SubOrder, InfraOrder, SuperFamily, Family
                           , SubFamily, Tribe, Genus, SubGenus, Species
          , Variety")
      , uiOutput("UI_col_markexcl_Phylo")
      #, p("Current version uses all phylogenetic names present in file.")
      , p("4. Run Function")
      , bsButton("b_calc_markexcl", label = "Run Function")
      , p("5. Download Results")
      , useShinyjs()
      , shinyjs::disabled(downloadButton("b_download_markexcl"
                                         , "Download Results"))
    )## sidebarPanel ~ END
    , mainPanel(
    #  includeHTML(file.path("www", "rmd_html", "ShinyHTML_MarkExclude.html"))
    )## mainPanel ~ END
  )##sidebarLayout ~ END
}##FUNCTION ~ END
