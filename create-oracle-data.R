target_data <- readr::read_csv("https://raw.githubusercontent.com/CDCgov/covid19-forecast-hub/refs/heads/main/target-data/covid-hospital-admissions.csv")
oracle_output <- target_data |>
  dplyr::filter(location != "US") |>
  dplyr::select(-state) |>
  dplyr::rename(target_end_date = date, oracle_value = value) |>
  dplyr::cross_join(data.frame(horizon = 0:3))

write.csv(oracle_output, "oracle-output.csv", row.names = FALSE)
