#' @title Build the `bdmonitor` Dashboard
#'
#' @description `build_dashboard()` is a function for generating the bdmonitor
#' dashboard. It is a flexdashboard that uses different R Markdown files as
#' dashboard pages.
#' 
#' @importFrom rmarkdown render
#' 
#' @return  Prints R Markdown dashboard in HTML
#'
#'@examples
#' build_dashboard()
#'
#' @export
#'
build_dashboard <- function() {
    
  dashboard_path <- "inst/rmd/bdmonitor_dashboard.Rmd"
    
    if (file.exists(dashboard_path)) {
    rmarkdown::render(dashboard_path,  encoding = 'UTF-8', output_dir = "docs/");
  }
}