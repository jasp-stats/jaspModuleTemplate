# jaspModuleTemplate Changelog

> **HOW TO READ AND UPDATE THIS CHANGELOG:**
> 
> This document follows a modified [Keep a Changelog](https://keepachangelog.com/) format adapted for the R/JASP ecosystem. Releases are listed in reverse chronological order (newest first).
> As an example see [jaspModuleTemplate](https://github.com/RensDofferhoff/jaspModuleTemplate/blob/master/NEWS.md)
> * **Adding New Changes (For Contributors):** All new commits should be logged at the very top of the file under the `# jaspModuleTemplate (development version)` header. Place your bullet point under the appropriate category (`## Added`, `## Fixed`, etc.). 
> * **Issue References:** Please reference the relevant GitHub Issue (if any) at the end of your line (e.g., `(Issue #123)`). 
> * **Format Categories:** >   * **Added:** New template features, QML examples, or build tools.
>   * **Changed:** Updates to default configurations, boilerplate code, or dependencies. 
>   * **Fixed:** Bug fixes in the build pipeline, R wrappers, or QML layouts.
>   * **Deprecated / Removed:** Outdated template components or legacy code.

---

# jaspModuleTemplate (development version)

## Added
* Added a "Raincloud Plot" option to visualize data distributions alongside summary statistics (Issue #45).
* Added Welch's t-test option

## Changed
* Reorganized the "Assumption Checks" menu to group homogeneity and normality tests together for better usability (Issue #51).

## Fixed
* Fixed a fatal error where the analysis would crash if a user assigned a variable containing entirely missing values (`NA`) to the grouping factor (Issue #53).

---

# jaspModuleTemplate 0.17.0

## Added
* Included support for robust standard errors (HC3 estimators) via the `sandwich` package (Issue #39).
* Added full interface translations for German and French (Issue #38).

## Changed
* The default color palette for all plots has been updated to be colorblind-friendly (Issue #43).
* The main results table now defaults to displaying 95% Confidence Intervals for effect sizes.

## Deprecated
* The legacy `jaspCreateLegacyPlot()` function used for backwards compatibility with older state files is marked for removal. Module developers should migrate to the modern plotting API (Issue #30).custom QML components (Issue #30).
