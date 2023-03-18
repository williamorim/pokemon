## code to prepare `pokemon_ptbr` dataset goes here

pokemon_ptbr <- pokemon::pokemon |>
  dplyr::select(
    id,
    pokemon,
    id_especie = species_id,
    altura = height,
    peso = weight,
    exp_base = base_experience,
    tipo_1 = type_1,
    tipo_2 = type_2,
    hp,
    ataque = attack,
    defesa = defense,
    ataque_especial = special_attack,
    defesa_especial = special_defense,
    velocidade = speed,
    cor_1 = color_1,
    cor_2 = color_2,
    cor_final = color_f,
    grupo_ovo_1 = egg_group_1,
    grupo_ovo_2 = egg_group_2,
    url_icone = url_icon,
    url_imagem = url_image,
    id_geracao = generation_id
  ) |>
  dplyr::mutate(
    peso = peso/10,
    altura = altura/10,
    tipo_1 = dplyr::case_when(
      tipo_1 == "grass" ~ "grama",
      tipo_1 == "fire" ~ "fogo",
      tipo_1 == "water" ~ "água",
      tipo_1 == "bug" ~ "inseto",
      tipo_1 == "normal" ~ "normal",
      tipo_1 == "poison" ~ "venenoso",
      tipo_1 == "electric" ~ "elétrico",
      tipo_1 == "ground" ~ "terrestre",
      tipo_1 == "fairy" ~ "fada",
      tipo_1 == "fighting" ~ "lutador",
      tipo_1 == "psychic" ~ "psíquico",
      tipo_1 == "rock" ~ "pedra",
      tipo_1 == "ghost" ~ "fantasma",
      tipo_1 == "ice" ~ "gelo",
      tipo_1 == "dragon" ~ "dragão",
      tipo_1 == "dark" ~ "sombrio",
      tipo_1 == "steel" ~ "aço",
      tipo_1 == "flying" ~ "voador"
    ),
    tipo_2 = dplyr::case_when(
      tipo_2 == "grass" ~ "grama",
      tipo_2 == "fire" ~ "fogo",
      tipo_2 == "water" ~ "água",
      tipo_2 == "bug" ~ "inseto",
      tipo_2 == "normal" ~ "normal",
      tipo_2 == "poison" ~ "venenoso",
      tipo_2 == "electric" ~ "elétrico",
      tipo_2 == "ground" ~ "terrestre",
      tipo_2 == "fairy" ~ "fada",
      tipo_2 == "fighting" ~ "lutador",
      tipo_2 == "psychic" ~ "psíquico",
      tipo_2 == "rock" ~ "pedra",
      tipo_2 == "ghost" ~ "fantasma",
      tipo_2 == "ice" ~ "gelo",
      tipo_2 == "dragon" ~ "dragão",
      tipo_2 == "dark" ~ "sombrio",
      tipo_2 == "steel" ~ "aço",
      tipo_2 == "flying" ~ "voador"
    )
  )


usethis::use_data(pokemon_ptbr, overwrite = TRUE)
