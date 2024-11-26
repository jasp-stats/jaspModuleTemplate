StaticText <- function(jaspResults, dataset, options) {
    staticTextDescriptives <- createJaspHtml(text = "This text has been hard-coded")

    jaspResults[["staticTextDescriptives"]] <- staticTextDescriptives
    return()
}

RandomText <- function(jaspResults, dataset, options) {
    text <- createJaspHtml(text = paste(sample(LETTERS, 5), collapse = ""))
    jaspResults[["text"]] <- text

    return()
}

AddOne <- function(jaspResults, dataset, options) {
    text <- createJaspHtml(text = paste(sample(LETTERS, 5), collapse = ""))
    jaspResults[["text"]] <- text

    return()
}