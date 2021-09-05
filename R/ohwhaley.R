install.packages(c("devtools", "roxygen2", "testthat", "knitr"))
library(devtools)
has_devel()

usethis::create_package("/Users/hayirving/Desktop/ohwhaley")

usethis::use_r("say")
usethis::use_r("phrases")

devtools::load_all()
say()

devtools::check()
usethis::use_mit_license("Hayley Irving")
devtools::check()
usethis::use_pipe()
devtools::check()

devtools::load_all()
say()

devtools::document()
?say()

usethis::use_testthat()
usethis::use_test("say")

devtools::check()

devtools::load_all()
say()

usethis::use_readme_rmd()
