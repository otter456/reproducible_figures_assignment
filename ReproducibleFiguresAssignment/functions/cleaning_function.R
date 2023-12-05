##CLEANING FUNCTIONS
#function to make sure the column names are cleaned up i.e., lowercase/snake case 
clean_column_names <- function(penguins_raw) {
  penguins_raw %>%
    clean_names()
}

#function to make sure the species names are shortened
shorten_species <- function(penguins_raw) {
  penguins_raw %>%
    mutate(Species = case_when(
      Species == "Adelie Penguin (Pygoscelis adeliae)" ~ "Adelie",
      Species == "Chinstrap penguin (Pygoscelis antarctica)" ~ "Chinstrap",
      Species == "Gentoo penguin (Pygoscelis papua)" ~ "Gentoo"
    ))
}

#function to remove any empty columns or rows
remove_empty_columns_rows <- function(penguins_raw) {
  penguins_raw %>%
    remove_empty(c("rows", "cols"))
}


# A function to subset the data based on the list of column names
subset_columns <- function(penguins_raw, column_names) {
  penguins_raw %>%
    select(all_of(column_names))
}

#function to remove rows which contain NA values
remove_NA <- function(penguins_raw) {
  penguins_raw %>%
    na.omit()
}

#function to remove unnecessary columns
remove_delta_columns <- function(penguins_raw) {
  penguins_raw %>%
    select(-starts_with("Delta"))
}

#function to subset the penguins data set based on species
filter_by_species <- function(penguins_raw, selected_species) {
  penguins_raw %>%
    filter(species == selected_species)
}
