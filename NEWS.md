# jaspModuleTemplate Changelog

> **How to read and update this changelog:**
> 
> This document follows a modified [Keep a Changelog](https://keepachangelog.com/) format adapted for the R/JASP ecosystem. Releases are listed in reverse chronological order (newest first).
> 
> * **Adding New Changes (For Contributors):** All new pull requests and commits should be logged at the very top of the file under the `# jaspTTests (development version)` header. Place your bullet point under the appropriate category (`## Added`, `## Fixed`, etc.). 
> * **Issue & PR References:** You must reference the relevant GitHub Issue and/or Pull Request at the end of your line. Use the format `(Issue #123, PR #124)` or just `(PR #124)` if there is no linked issue.
> * **Format Categories:** To help you quickly see how updates might affect your work, changes under each version are grouped into specific categories:
>   * **Added:** New features, plots, robust methods, or statistical tests.
>   * **Changed:** Updates to default statistical settings, dependencies, or UI layouts. *Pay close attention to these, as they may alter the results of existing analyses if you rely on defaults.*
>   * **Fixed:** Bug fixes, crash resolutions, and edge-case handling.
>   * **Deprecated / Removed:** Features or UI elements that are slated for removal or have been completely removed.

---

# jaspModuleTemplate (development version)

## Added
* **QML Examples:** Added a new example demonstrating how to implement a dynamic `VariablesForm` with variable filtering (Issue #45, PR #48).
* **GitHub Actions:** Added a `.github/workflows/R-CMD-check.yaml` boilerplate file to help new module developers set up CI/CD easily out of the box (PR #50).

## Changed
* **Boilerplate:** Updated the `DESCRIPTION` file template to require `jaspBase (>= 0.18.0)` by default, reflecting the latest JASP core architecture requirements (Issue #51, PR #52).

## Fixed
* **Build Pipeline:** Fixed an issue where the `tools/installModule.R` script would fail on Windows machines due to incorrect backslash path handling (Issue #53, PR #54).

---

# jaspModuleTemplate 0.17.0

## Added
* **R Code:** Included a boilerplate `jaspExampleAnalysis.R` file demonstrating best practices for handling errors and creating JASP state objects (PR #40).
* **Translations:** Added placeholder `.ts` files to demonstrate the recommended folder structure and workflow for module translations (Issue #38, PR #42).

## Changed
* **Namespace:** Standardized the `NAMESPACE` file template to use `importFrom()` instead of importing entire packages, matching current JASP module performance guidelines (PR #44).

## Deprecated
* **Legacy UI:** The old `ExampleAnalysis.qml` that used the deprecated QtQuick components has been marked for removal. Module developers should now base their interfaces on `ExampleAnalysis2.qml`, which uses JASP's custom QML components (Issue #30).
