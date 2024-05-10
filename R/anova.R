do_anova <- function(movies) {
  model <- lm(average_rating ~ genres, movies)
  return (model)

  #oneway.test(average_rating ~ genres, data=movies)

  #fit <-movies |> aov(average_rating ~ genres)
  #summary(fit)
}
#pacman::p_load(tidyverse,targets,harrypotter,gt, gglm)
#tar_load(movies_clean)
#do_anova(movies_clean)


