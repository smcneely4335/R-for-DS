##############
### MimicR ###
##############

# Author: Sam McNeely
# Contributors:
# Date Created: 09/12/2023
# Date Modified: 09/12/2023

# Purpose:
# The purpose of this script is to create useful functions that are used often
# in wrangling, analyses, and visualizations. It's likely that these functions
# already exist in various packages, but it's good function writing practice
# regardless.

################################################################################

# 1) Function: packin()

# Write a function that takes package names in as arguments, then checks if
# the package(s) is installed on your current system. If they are installed
# then the function should load the package(s) into the current session. If
# the package(s) is not installed, then the function should both install the
# package(s) and load it into the current session.
#
# This should mimic the function p_load() in the package pacman.

packin <- function(...) {
  packs <- list(...)
  for(i in 1:length(packs)) {
    if(!requireNamespace(packs[[i]])) {
      install.packages(packs[[i]])
      library(packs[[i]], character.only = TRUE)
    } else {
      library(packs[[i]], character.only = TRUE)
    }
  }
}