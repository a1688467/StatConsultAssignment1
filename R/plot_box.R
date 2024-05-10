plot_boxplot <- function(movies) {
  movies |>
    ggplot(aes(average_rating, col = genres, x = genres)) +
    geom_boxplot( show.legend = FALSE) +
    harrypotter::scale_colour_hp_d("Ravenclaw")
  }

#pacman::p_load(tidyverse,targets,harrypotter)
#tar_load(movies_clean)
#plot_boxplot(movies_clean)
