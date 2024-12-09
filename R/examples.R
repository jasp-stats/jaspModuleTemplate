AddOne <- function(jaspResults, dataset, options) {
    result <- as.character(options$my_number + 1)
    jaspResults[["result"]] <- createJaspHtml(text = result,
                                              title = "This is your result:")

    return()
}
