copy_qmd_templates<- function(){

  if(!file.exists("themes")) dir.create("themes")
  message("Created 'themes' folder")

  file.copy(
    from = system.file("extdata/_extensions/quartoDocTempate/main.qmd",
                       package = "Hoggar"),
    to = paste0("."),
    copy.mode = TRUE
  )
  file.copy(
    from = system.file("extdata/_extensions/quartoDocTempate/_appendix.qmd",
                       package = "Hoggar"),
    to = paste0("./qmd/"),
    copy.mode = TRUE
  )

  file.copy(
    from = system.file("extdata/_extensions/quartoPresTemplate/main.qmd",
                       package = "Hoggar"),
    to = paste0("./presentation.qmd"),
    copy.mode = TRUE
  )
  file.copy(
    from = system.file(
      "extdata/_extensions/quartoDocTempate/hoggar.scss",
      package = "Hoggar"
    ),
    to = paste0("themes/docHoggar.scss"),
    copy.mode = TRUE
  )
  file.copy(
    from = system.file(
      "extdata/_extensions/quartoPresTemplate/hoggar.scss",
      package = "Hoggar"
    ),
    to = paste0("themes/presHoggar.scss"),
    copy.mode = TRUE
  )

}
