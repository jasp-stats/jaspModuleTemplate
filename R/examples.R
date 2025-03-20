AddOne <- function(jaspResults, dataset, options) {
    result <- as.character(options$my_number + 1) # options$my_number comes from the menu created by inst/qml/integer.qml

    jaspResults[["result"]] <- createJaspHtml(text = result,
                                              title = "This is your result:")

    return()
}

ProcessData <- function(jaspResults, dataset, options) {
  # Dataset access
  # options$ts --maps to--> 't'
  # dataset[, options$ts] --maps to--> dataset$t
  result <- paste(dataset[, options$ts], collapse = "")
  jaspResults[["result"]] <- createJaspHtml(text = result,
                                            title = "This is your result:")

  return()
}

ProcessTable <- function(jaspResults, dataset, options) {
  # Prints the inputs as a table
  stats <- createJaspTable(gettext("Some descriptives"))

  stats$addColumnInfo(name = gettext("times"))
  stats$addColumnInfo(name = gettext("xs"))

  stats[["times"]] <- dataset[, options$ts]
  stats[["xs"]] <- dataset[, options$xs]

  jaspResults[["stats"]] <- stats

  return()
}

Parabola <- function(jaspResults, dataset, options) {
  # Analysis
  f <- function(x) { options$a * x^2 } # Function to be plotted
  p <- ggplot2::ggplot() +             # Plotting command
          ggplot2::xlim(-3, 3) +
          ggplot2::ylim(0, 10) +
          ggplot2::geom_function(fun = f)

  # Aesthetics
  parabolaPlot <- createJaspPlot(title = gettext("Parabola"),
                                 width = 160,
                                 height = 320)
  parabolaPlot$dependOn(c("a")) # Refresh view whenever a changes

  jaspResults[["parabolaPlot"]] <- parabolaPlot
  parabolaPlot$plotObject <- p

  return()
}
