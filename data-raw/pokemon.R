## code to prepare `pokemon` dataset goes here

library(dplyr)

path <- function(x) {
  paste0(
    "https://raw.githubusercontent.com/phalt/pokeapi/master/data/v2/csv/",
    x
  )
}

df_pkmn <- readr::read_csv(path("pokemon.csv")) |>
  select(-order, -is_default) |>
  rename(pokemon = identifier)

df_gen <- readr::read_csv(path("pokemon_species.csv")) |>
  select(1,3) |>
  mutate(generation_id = ifelse(is.na(generation_id), 0, generation_id))

df_stats <- readr::read_csv(path("stats.csv")) |>
  rename(stat_id = id) |>
  right_join(
    readr::read_csv(path("pokemon_stats.csv")),
    by = "stat_id"
  ) |>
  mutate(identifier = stringr::str_replace(identifier, "-", "_")) |>
  select(pokemon_id, identifier, base_stat) |>
  tidyr::pivot_wider(names_from = identifier, values_from = base_stat) |>
  rename(id = pokemon_id)

df_type <- readr::read_csv(path("types.csv")) |>
  rename(type_id = id) |>
  right_join(readr::read_csv(path("pokemon_types.csv")), by = "type_id") |>
  select(pokemon_id, identifier, slot) |>
  mutate(slot = paste0("type_", slot)) |>
  tidyr::pivot_wider(names_from = slot, values_from = identifier) |>
  rename(id = pokemon_id)

df_egg <- readr::read_csv(path("egg_groups.csv")) |>
  rename(egg_group_id = id) |>
  right_join(
    readr::read_csv(path("pokemon_egg_groups.csv")),
    by = "egg_group_id"
  ) |>
  group_by(species_id) |>
  mutate(ranking = row_number(),
         ranking = paste0("egg_group_", ranking)) |>
  select(species_id, ranking, identifier) |>
  tidyr::pivot_wider(
    names_from = ranking,
    values_from = identifier
  )

url_bulbapedia_list <-
  "http://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_base_stats_(Generation_VI-present)"

id <- url_bulbapedia_list |>
  rvest::read_html(encoding = "UTF-8") |>
  rvest::html_node("table.sortable") |>
  rvest::html_table() |>
  dplyr::pull("#") |>
  readr::parse_number()

url_icon <-  url_bulbapedia_list |>
  rvest::read_html() |>
  rvest::html_nodes("table.sortable img") |>
  rvest::html_attr("src")

df_icon <- tibble::tibble(id, url_icon) |>
  filter(!is.na(id)) |>
  distinct(id, u.keep_all = TRUE)

df_color <- purrr::map_df(
  na.omit(unique(c(df_type$type_1, df_type$type_2))),
  function(t) {
    # t <- "bug"
    col <- "http://pokemon-uranium.wikia.com/wiki/Template:%s_color" |>
      sprintf(t) |>
      rvest::read_html() |>
      rvest::html_nodes("span > b") |>
      rvest::html_text()
    tibble::tibble(type = t, color = paste0("#", col))
  }
)

df_color_f <- expand.grid(
  color_1 = df_color$color,
  color_2 = df_color$color,
  stringsAsFactors = FALSE
) |>
  tbl_df() |>
  group_by(color_1, color_2) |>
  do({
    n = 100; p = 0.25
    data_frame(
      color_f = colorRampPalette(c(.$color_1, .$color_2))(n)[round(n*p)]
    )
  })

# THE join
pokemon <- df_pkmn |>
  left_join(df_type, by = "id") |>
  left_join(df_stats, by = "id") |>
  left_join(rename(df_color, type_1 = type, color_1 = color), by = "type_1") |>
  left_join(rename(df_color, type_2 = type, color_2 = color), by = "type_2") |>
  left_join(df_color_f, by =  c("color_1", "color_2"))|>
  left_join(df_egg, by = "species_id") |>
  left_join(df_icon, by = "id") |>
  left_join(df_gen, by = "id") |>
  mutate(
    weight = weight/10,
    height = height/10
  )

pokemon <- pokemon |>
  dplyr::mutate(
    url_imagem = purrr::map_chr(
      stringr::str_pad(id, 3, "left", 0),
      ~ paste0(
        "https://raw.githubusercontent.com/HybridShivam/Pokemon/master/assets/images/",
        .x,
        ".png"
      )
    )
  )

saveRDS(pokemon, "data-raw/rds/pkmn.rds")

usethis::use_data(pokemon, overwrite = TRUE)
