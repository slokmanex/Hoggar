#' Create a project with pre-defined structure and .gitignore file
#'
#' @param path character: the path to create project in.
#' @param createGitignore logical: whether to create a .gitignore file.
#'
#' @export
#'
create_project <- function(path, createGitignore = FALSE) {
  # Create the project path
  dir.create(path, recursive = TRUE, showWarnings = FALSE)

  # Change the working directory to the newly created folder
  setwd(file.path(getwd(), path))

  # Create folders
  folder_list <- c(
    "scripts",
    "scrap",
    "data",
    "qmd",
    "data/presentation",
    "data/raw",
    "data/processed",
    "figures",
    "tmp",
    "themes",
    'images'
  )
  sapply(folder_list, function(x) {
    dir.create(x, recursive = TRUE, showWarnings = FALSE)
  })

  # Check if the user wants a .gitignore file
  if (createGitignore) {
    git_ignores <- c(
      ".Rhistory",
      ".Rapp.history",
      ".RData",
      ".Ruserdata",
      ".Rproj.user/",
      ".Renviron"
    )
    writeLines(paste(git_ignores, sep = "\n"), ".gitignore")
  }
  # Copy quarto templates
  copy_qmd_templates()
  # Copy scripts
  copy_scripts()
}
