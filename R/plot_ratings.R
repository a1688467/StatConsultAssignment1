plot_ratings <- function(movies) {
  movies |>
    ggplot(aes(average_rating, col = genres)) +
    geom_density() +
    harrypotter::scale_colour_hp_d("Ravenclaw")
}

#pacman::p_load(tidyverse,targets,harrypotter)
#tar_load(movies_clean)
#plot_ratings(movies_clean)
