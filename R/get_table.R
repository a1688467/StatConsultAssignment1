get_table <- function(movies) {
movies |>
    group_by(genres) |>
    summarise(mean_rating = mean(average_rating), median_rating = median(average_rating)) |>
    gt() |>
    fmt_number(col = 2)
}
#pacman::p_load(tidyverse,targets,harrypotter,gt)
#tar_load(movies_clean)
#get_table(movies_clean)


