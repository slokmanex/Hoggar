# Function to create a ggplot2 theme using the Hoggar color palette
theme_hoggar <- function(
    font_face = "plain", # font face for text elements
    font_size = 14,      # font size for text elements
    xytic_size = 12,     # font size for axis tic labels
    text_color = "#000000", # color for text elements
    background_color = "#FFFFFF" # background color for plot and panel
) {
  # Use the light theme as a base
  ggplot2::theme_light() +
    # Add customizations for text, axis tic labels, plot background,
    # panel background, and panel border
    ggplot2::theme(
      text = ggplot2::element_text(
        color = text_color,
        face = font_face,
        size = font_size
      ),
      axis.text.x = ggplot2::element_text(
        angle = 0,
        hjust = 1,
        size = xytic_size,
        color = 'black'
      ),
      axis.text.y = ggplot2::element_text(
        angle = 0,
        hjust = 1,
        size = xytic_size,
        color = 'black'
      ),
      plot.background = ggplot2::element_rect(fill = background_color),
      panel.background = ggplot2::element_rect(fill = background_color),
      panel.border = element_rect(
        fill = NA,
        colour = "black",
        linewidth = rel(2)
      )
    )
}

# Define the Hoggar color palette
hoggar_palette <- c(
  "#7B1FA2",
           "#3366FF",
           "#33691E",
           "#CDDC39",
           "#7E97BE",
           "#9E9D24",
           "#FFC107",
           "#F57C00",
           "#FF5733",
           "#D32F2F",
           "#000000"
)
