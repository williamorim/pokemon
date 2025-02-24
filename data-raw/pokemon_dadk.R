## code to prepare `pokemon_dadk` dataset goes here

pokemon_dadk <- pokemon::pokemon |>
  dplyr::select(
    id,
    pokemon,
    art_id = species_id,
    højde = height,
    vægt = weight,
    basis_erfaring = base_experience,
    type_1,
    type_2,
    hp,
    angreb = attack,
    forsvar = defense,
    speciel_angreb = special_attack,
    speciel_forsvar = special_defense,
    fart = speed,
    farve_1 = color_1,
    farve_2 = color_2,
    farve_slut = color_f,
    æg_gruppe_1 = egg_group_1,
    æg_gruppe_2 = egg_group_2,
    url_ikon = url_icon,
    url_billede = url_image,
    generation_id
  ) |>
  dplyr::mutate(
    vægt = vægt/10,
    højde = højde/10,
    type_1 = dplyr::case_when(
      type_1 == "grass" ~ "græs",
      type_1 == "fire" ~ "ild",
      type_1 == "water" ~ "vand",
      type_1 == "bug" ~ "insekt",
      type_1 == "normal" ~ "normal",
      type_1 == "poison" ~ "gift",
      type_1 == "electric" ~ "elektrisk",
      type_1 == "ground" ~ "jord",
      type_1 == "fairy" ~ "fe",
      type_1 == "fighting" ~ "kamp",
      type_1 == "psychic" ~ "synsk",
      type_1 == "rock" ~ "sten",
      type_1 == "ghost" ~ "spøgelse",
      type_1 == "ice" ~ "is",
      type_1 == "dragon" ~ "drage",
      type_1 == "dark" ~ "mørk",
      type_1 == "steel" ~ "stål",
      type_1 == "flying" ~ "flyvende"
    ),
    type_2 = dplyr::case_when(
      type_2 == "grass" ~ "græs",
      type_2 == "fire" ~ "ild",
      type_2 == "water" ~ "vand",
      type_2 == "bug" ~ "insekt",
      type_2 == "normal" ~ "normal",
      type_2 == "poison" ~ "gift",
      type_2 == "electric" ~ "elektrisk",
      type_2 == "ground" ~ "jord",
      type_2 == "fairy" ~ "fe",
      type_2 == "fighting" ~ "kamp",
      type_2 == "psychic" ~ "synsk",
      type_2 == "rock" ~ "sten",
      type_2 == "ghost" ~ "spøgelse",
      type_2 == "ice" ~ "is",
      type_2 == "dragon" ~ "drage",
      type_2 == "dark" ~ "mørk",
      type_2 == "steel" ~ "stål",
      type_2 == "flying" ~ "flyvende"
    )
  )


usethis::use_data(pokemon_dadk, overwrite = TRUE)
