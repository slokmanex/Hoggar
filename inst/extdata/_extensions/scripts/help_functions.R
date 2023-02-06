# Function to append path
ap <- function(path, dir_in) {
  # return path if either path or dir_in is empty
  if (path == "" || dir_in == "") return(paste0(path, dir_in, sep = ""))

  # remove leading slash from dir_in if it exists
  if (substr(dir_in, 1, 1) == "/") dir_in <- substr(dir_in, 2, nchar(dir_in))

  # add a trailing slash to path if it doesn't exist
  if (substr(path, nchar(path), nchar(path)) != "/") path <- paste0(path, "/")

  # return combined path
  return(paste0(path, dir_in, sep = ""))
}
