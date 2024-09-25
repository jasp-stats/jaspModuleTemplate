StaticText <- function(jaspResults, dataset, options) {
    staticTextDescriptives <- createJaspHtml(text = "This text has been hard-coded")

    jaspResults[["staticTextDescriptives"]] <- staticTextDescriptives
    return()
}