create_data <- function(){
  # Load the helper function
  source("scripts/help_functions.R")

  # Generate the simulation data
  sim_data <- data.table::data.table(data.frame(
    subject_id = 1:10,
    analysis_visit = paste0("week", rbinom(10, 1, 0.5)),
    age = rnorm(10, 40, 10),
    sex = ifelse(rbinom(10, 1, 0.5), "M", "F"),
    arm = ifelse(rbinom(10, 1, 0.5), "T1", "T2")
  ))

  # Define the features to keep
  to_keep <- c("subject_id", "analysis_visit", "age", "sex")

  # Define the metadata for the variables
  metadata <- list(
    labels = c("subject_id" = "Subject ID",
               "analysis_visit" = "Analysis Visit",
               "age" = "Age of Patient",
               "sex" = "Patient Sex"),
    units = c("age" = "Years")
  )

  # Clean and update the data
  sim_data <- upData(
    sim_data,
    arm = fcase(arm %like% "T1", "GUS",
                arm %like% "T2", "PBO"),
    analysis_visit = factor(gsub(" ", "", toupper(analysis_visit)),
                            levels = c("WEEK0", "WEEK1")),
    subject_id = as.character(subject_id),
    subset = sex != "",
    keep = to_keep,
    labels = metadata$labels,
    units = metadata$units
  )

  # Save Data
  qsave(sim_data,
        'data/processed/simdata.qs',
        compress_level = 4)
}
create_data()
