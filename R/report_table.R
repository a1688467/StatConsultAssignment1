report_table <- function(movies) {
  table <- movies |>
    group_by(Genre=genres) |>
    summarise(Rating = mean(average_rating)) |>
    arrange(desc(Rating)) |>
    gt() |>
    fmt_number(col = 2)
    gtsave(table, "report_table_picture.png", path = "tabs")
}
#pacman::p_load(tidyverse,targets,harrypotter,gt)
#tar_load(movies_clean)
#report_table(movies_clean)


