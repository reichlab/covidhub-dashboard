oracle_output <- arrow::read_parquet(
    "https://raw.githubusercontent.com/CDCgov/covid19-forecast-hub/refs/heads/main/target-data/oracle-output.parquet"
)

write.csv(oracle_output, "oracle-output.csv", row.names = FALSE)
