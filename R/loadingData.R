

processTable <- function(jaspResults, dataset, options) {
  # Prints the inputs as a table
  stats <- createJaspTable(gettext("Some descriptives"))

  stats$addColumnInfo(name = gettext("times"))
  stats$addColumnInfo(name = gettext("xs"))

  stats[["times"]] <- dataset[[options$ts]]
  stats[["xs"]] <- dataset[[options$xs]]

  jaspResults[["stats"]] <- stats

  return()
}
