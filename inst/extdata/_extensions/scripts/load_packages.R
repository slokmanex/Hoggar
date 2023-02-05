#' @title Load Packages
#' @description Loads several important packages necessary for analysis,
#' including `Hmisc`, `data.table`, `ggpubr`, `qs`, `rethinking`,
#' `dagitty`, and `tidyverse`. Also loads a set of helper functions
#' from `Hmisc`.
#'
#' @return None.
#' @note Suppresses package start-up messages using
#' `suppressPackageStartupMessages`.

load_packages <- function() {
  suppressPackageStartupMessages({
    library(Hmisc)
    library(data.table)
    library(ggpubr)
    library(qs)
    library(rethinking)
    library(dagitty)
    require(tidyverse)
  })
  getRs('reptools.r')
}
load_packages()
