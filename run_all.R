# Install renv when it is not yet available
if (!requireNamespace("renv", quietly = TRUE)) {
  install.packages("renv")
}

# Restore the package versions from renv.lock
renv::restore(prompt = FALSE)

# Install TinyTeX when no LaTeX installation is available
if (!tinytex::is_tinytex()) {
  tinytex::install_tinytex()
}

# Render the report to PDF
rmarkdown::render(
  input = "Group4_Assignment.Rmd",
  output_format = "pdf_document",
  clean = TRUE
)