#' Copy scripts from package "Hoggar"
#'
#' @return None
copy_scripts <- function() {
  # Create folder "scripts" if it doesn't exist
  if (!file.exists("scripts"))
    dir.create("scripts")
  message("Created 'scripts' folder")

  # Copy files from package "Hoggar" to "./scripts"
  file_names <-
    c("create_data.R", "help_functions.R", "load_packages.R")
  for (file_name in file_names) {
    from_file <-
      system.file(paste0("extdata/_extensions/scripts/", file_name),
                  package = "Hoggar")
    to_file <- paste0("./scripts/", file_name)
    file.copy(from = from_file,
              to = to_file,
              copy.mode = TRUE)
  }
  file.copy(from = system.file(paste0("extdata/_extensions/ggtheme/", 'theme_hoggar.R'),
                               package = "Hoggar"),
            to = './themes/theme_hoggar.R',
            copy.mode = TRUE)
}
