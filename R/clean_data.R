
clean_data <- function(movies_file_raw){
  raw_data <- read.xlsx(movies_file_raw,1)
  raw_data <- tibble(raw_data)

  # Filter only relevant movies
  raw_data <-
    raw_data |>
    filter(kwanzaa == TRUE | hanukkah == TRUE | holiday == TRUE | christmas == TRUE)

  # Filter out things less than 45 minutes
  raw_data <-
    raw_data |>
    filter(runtime_minutes >= 40)

  # Added 19/03
  raw_data <-
    raw_data |>
    filter(num_votes >= 10)


  # Select the relevant cols
  raw_data <-
    raw_data |>
    select(genres, average_rating)

  # Remove listings with missing genres
  raw_data <-
    raw_data |>
    na.omit()

  # Split up the genres by adding rows with just one genre
  raw_data <-
    raw_data |>
    separate_rows(genres)

  # Remove genres with less than 50 movies
  raw_data <-
    raw_data |> group_by(genres) |> filter(n() >= 50)

  # Turn into factor
  raw_data <-
    raw_data |>
    mutate(
      genres = factor(genres)
    )

  # Return cleaned data
  return(raw_data)
}

# Driver
# Also where our EDA happens/happened!
#pacman::p_load(tidyverse, targets, xlsx, skimr)
#tar_load(movies_file_raw)
#clean_data



# Eda in seperate file nexttime?
#skimr::skim(raw_data)
#facs <- factor(raw_data$genres)
#levels(facs)

# Plot the number of movies per genre since I'm not happy with the cutoff of 10

