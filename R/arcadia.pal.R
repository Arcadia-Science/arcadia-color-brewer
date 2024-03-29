#' Generate colors using Aracadia Science's color palettes
#'
#' @param n Number of colors.
#' @param name Which palette to use.
#' @param choose_random Randomly n sample colors from palette.
#' @export
#' @examples
#' arcadia.pal(n = 3, name = "Neutral")
#' arcadia.pal(n = 5, name = "Neutral", choose_random = TRUE)
#'
arcadia.pal <- function(n = 3,
                        name = c("Neutral", "Accent", "Lighter_accents", "Accent_expanded", "Lighter_accent_expanded"),
                        choose_random = FALSE) {

  # Set up color lists
  Neutral <- c("#F4FBFF", "#FYF9FD", "#FFFDF7", "#FFFBF8", "#8F8885", "#43413F", "#292928")
  names(Neutral) <- c("Zephyr", "Pale_Azure", "Orchid", "Buff", "Bark", "Slate", "Crow")

  Accent <- c("#5088C5", "#F28360", "#3B9886", "#F7B846", "#7A77AB", "#F898AE")
  names(Accent) <- c("Aegean", "Amber", "Seaweed", "Canary", "Aster", "Rose")

  Lighter_accents <- c("#C6E7F4", "#F8C5C1", "#B5BEA4", "#F5E4BE", "#DCBFFC", "#F5CBE4")
  names(Lighter_accents) <- c("Blue_sky", "Dress", "Sage", "Oat", "Periwinkle", "Blossom")

  Accent_expanded <- c("#97CD78", "#73B5E3", "#FFB984", "#BAB0A8", "#C85152", "#8A99AD")
  names(Accent_expanded) <- c("Lime", "Vital_blue", "Orange", "Chateau", "Dragon", "Marine_blue")

  Lighter_accent_expanded <- c("#D1EADF", "#BABEE0", "#F1E8DA", "#DAD3C7", "#DA9085", "#B6C8D4")
  names(Lighter_accent_expanded) <- c("Mint", "Wish", "Satin", "Taupe", "Mars", "Denim")

  # Get desired palette
  pal <- switch(name,
    Neutral = setNames(
      c("#F4FBFF", "#F7F9FD", "#FFFDF7", "#FFFBF8", "#8F8885", "#43413F", "#292928"),
      c("Zephyr", "Pale_Azure", "Orchid", "Buff", "Bark", "Slate", "Crow")
    ),
    Accent = setNames(
      c("#5088C5", "#F28360", "#3B9886", "#F7B846", "#7A77AB", "#F898AE"),
      c("Aegean", "Amber", "Seaweed", "Canary", "Aster", "Rose")
    ),
    Lighter_accents = setNames(
      c("#C6E7F4", "#F8C5C1", "#B5BEA4", "#F5E4BE", "#DCBFFC", "#F5CBE4"),
      c("Blue_sky", "Dress", "Sage", "Oat", "Periwinkle", "Blossom")
    ),
    Accent_expanded = setNames(
      c("#97CD78", "#73B5E3", "#FFB984", "#BAB0A8", "#C85152", "#8A99AD"),
      c("Lime", "Vital_blue", "Orange", "Chateau", "Dragon", "Marine_blue")
    ),
    Lighter_accent_expanded = setNames(
      c("#D1EADF", "#BABEE0", "#F1E8DA", "#DAD3C7", "#DA9085", "#B6C8D4"),
      c("Mint", "Wish", "Satin", "Taupe", "Mars", "Denim")
    )
  )

  # Set up name list
  namelist <- c("Neutral", "Accent", "Lighter_accents", "Accent_expanded", "Lighter_accent_expanded")

  # Return
  if (!(name %in% namelist)) {
    stop(paste(name, "is not a valid palette name for arcadia.pal\n"))
  }
  if (n < 3) {
    warning("minimal value for n is 3, returning requested palette with 3 different levels\n")
    if (choose_random == TRUE) {
      return(pal[sample(1:length(pal), 3, replace = FALSE)])
    } else {
      return(pal[1:3])
    }
  }
  if (n > length(pal)) {
    warning(
      paste(
        "n too large, allowed maximum for palette",
        name, "is", length(pal)
      ),
      "\nReturning the palette you asked for with that many colors\n"
    )
    if (choose_random == TRUE) {
      return(pal[sample(1:length(pal), length(pal), replace = FALSE)])
    } else {
      return(pal[1:length(pal)])
    }
  }
  if (choose_random == TRUE) {
    return(pal[sample(1:length(pal), n, replace = FALSE)])
  } else {
    return(pal[1:n])
  }
}
