DummyAnalysis <- function(jaspResults, dataset, options) {
    dummyTextDescriptives <- createJaspHtml(text = "Fixed text")

    jaspResults[["dummyTextsDescriptives"]] <- dummyTextDescriptives
    return()
}