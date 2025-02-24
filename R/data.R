#' Pokémon data
#'
#' A dataset with pokémon data from Nintendo games.
#'
#' @format
#' A data frame with 949 rows and 22 columns:
#' \describe{
#'  \item{id}{a numeric vector representing the ID of each Pokémon}
#'  \item{pokemon}{a character vector representing the name of each Pokémon}
#'  \item{species_id}{a numeric vector representing the species ID of each Pokémon}
#'  \item{height}{a numeric vector representing the height of each Pokémon}
#'  \item{weight}{a numeric vector representing the weight of each Pokémon}
#'  \item{base_experience}{a numeric vector representing the base experience of each Pokémon}
#'  \item{type_1}{a character vector representing the primary type of each Pokémon}
#'  \item{type_2}{a character vector representing the secondary type of each Pokémon}
#'  \item{hp}{a numeric vector representing the HP (hit points) of each Pokémon}
#'  \item{attack}{a numeric vector representing the attack points of each Pokémon}
#'  \item{defense}{a numeric vector representing the defense points of each Pokémon}
#'  \item{special_attack}{a numeric vector representing the special attack points of each Pokémon}
#'  \item{special_defense}{a numeric vector representing the special defense points of each Pokémon}
#'  \item{speed}{a numeric vector representing the speed of each Pokémon}
#'  \item{color_1}{a character vector representing the primary color of each Pokémon}
#'  \item{color_2}{a character vector representing the secondary color of each Pokémon}
#'  \item{color_f}{a character vector representing the final color of each Pokémon}
#'  \item{egg_group_1}{a character vector representing the primary egg group of each Pokémon}
#'  \item{egg_group_2}{a character vector representing the secondary egg group of each Pokémon}
#'  \item{url_icon}{a character vector representing the URL image of each Pokémon}
#'  \item{generation_id}{a numeric vector representing the generation ID of each Pokémon}
#'  \item{url_image}{a character vector representing the URL image of each Pokémon}
#' }
#' @source <https://bulbapedia.bulbagarden.net/wiki/Main_Page>
#' @source <https://github.com/phalt/pokeapi>
#' @source <https://pokemon-uranium.fandom.com/wiki/Main_Page>
#' @source <https://github.com/HybridShivam/Pokemon>
"pokemon"

#' Pokémon data (PT-BR)
#'
#' Uma base de dados de Pokémon, extraída dos jogos da Nintendo.
#'
#' @format
#' Um data frame com 949 linhas e 22 colunas:
#' \describe{
#'  \item{id}{um vetor numérico representando o ID de cada Pokémon}
#'  \item{pokemon}{um vetor numérico representando a altura de cada Pokémon}
#'  \item{id_especie}{um vetor de caracteres representando o nome de cada Pokémon}
#'  \item{altura}{um vetor numérico representando o peso de cada Pokémon}
#'  \item{peso}{um vetor numérico representando a experiência base de cada Pokémon}
#'  \item{exp_base}{um vetor de caracteres representando o tipo primário de cada Pokémon}
#'  \item{tipo_1}{um vetor de caracteres representando o tipo secundário de cada Pokémon}
#'  \item{tipo_2}{um vetor numérico representando os pontos de vida (HP) de cada Pokémon}
#'  \item{hp}{um vetor numérico representando os pontos de ataque de cada Pokémon}
#'  \item{ataque}{um vetor numérico representando os pontos de defesa de cada Pokémon}
#'  \item{defesa}{um vetor numérico representando os pontos de ataque especial de cada Pokémon}
#'  \item{ataque_especial}{um vetor numérico representando os pontos de defesa especial de cada Pokémon}
#'  \item{defesa_especial}{um vetor numérico representando a velocidade de cada Pokémon}
#'  \item{velocidade}{um vetor de caracteres representando a cor primária de cada Pokémon}
#'  \item{cor_1}{um vetor de caracteres representando a cor secundária de cada Pokémon}
#'  \item{cor_2}{um vetor de caracteres representando a cor final de cada Pokémon}
#'  \item{cor_final}{um vetor de caracteres representando o grupo de ovos primário de cada Pokémon}
#'  \item{grupo_ovo_1}{um vetor de caracteres representando o grupo de ovos primário de cada Pokémon}
#'  \item{grupo_ovo_2}{um vetor de caracteres representando o grupo de ovos secundário de cada Pokémon}
#'  \item{url_icone}{um vetor de caracteres representando a URL da imagem de ícone de cada Pokémon}
#'  \item{url_imagem}{um vetor de caracteres representando o grupo de ovos secundário de cada Pokémon}
#'  \item{id_geracao}{um vetor numérico representando o ID de geração de cada Pokémon}
#' }
#' @source <https://bulbapedia.bulbagarden.net/wiki/Main_Page>
#' @source <https://github.com/phalt/pokeapi>
#' @source <https://pokemon-uranium.fandom.com/wiki/Main_Page>
#' @source <https://github.com/HybridShivam/Pokemon>
"pokemon_ptbr"

#' Pokémon-data (DA-DK)
#'
#' Et datasæt ned pokémon-data fra Nintendo-spil.
#'
#' @format
#' En data frame med 949 rækker og 22 kolonner.
#' \describe{
#'  \item{id}{en numerisk vektor, som angiver hver Pokémon's ID}
#'  \item{pokemon}{en karaktervektor, som angiver hver Pokémon's navn}
#'  \item{art_id}{en numerisk vektor, som angiver hver Pokémon's arts-ID}
#'  \item{højde}{en numerisk vektor, som angiver hver Pokémon's højde}
#'  \item{vægt}{en numerisk vektor, som angiver hver Pokémon's vægt}
#'  \item{basis_erfaring}{en numerisk vektor, som angiver hver Pokémon's basiserfaring}
#'  \item{type_1}{en karaktervektor, som angiver hver Pokémon's primære type}
#'  \item{type_2}{en karaktervektor, som angiver hver Pokémon's sekundære type}
#'  \item{hp}{en numerisk vektor, som angiver hver Pokémon's helbredspoint (HP)}
#'  \item{angreb}{en numerisk vektor, som angiver hver Pokémon's angrebspoint}
#'  \item{forsvar}{en numerisk vektor, som angiver hver Pokémon's forsvarspoints}
#'  \item{speciel_angreb}{en numerisk vektor, som angiver hver Pokémon's specialangrebspoint}
#'  \item{speciel_forsvar}{en numerisk vektor, som angiver hver Pokémon's specialforsvarspoint}
#'  \item{fart}{en numerisk vektor, som angiver hver Pokémon's fart}
#'  \item{farve_1}{en karaktervektor, som angiver hver Pokémon's primære farve}
#'  \item{farve_2}{en karaktervektor, som angiver hver Pokémon's sekundære farve}
#'  \item{farve_slut}{en karaktervektor, som angiver hver Pokémon's endelige farve}
#'  \item{æg_gruppe_1}{en karaktervektor, som angiver hver Pokémon's primære æggegruppe}
#'  \item{æg_gruppe_2}{en karaktervektor, som angiver hver Pokémon's sekundære æggegruppe}
#'  \item{url_ikon}{en karaktervektor, som angiver hver Pokémon's ikon-URL}
#'  \item{generation_id}{en numerisk vektor, som angiver hver Pokémon's generations-ID}
#'  \item{urlbillede}{en karaktervektor, som angiver hver Pokémon's billede-URL}
#' }
#' @source <https://bulbapedia.bulbagarden.net/wiki/Main_Page>
#' @source <https://github.com/phalt/pokeapi>
#' @source <https://pokemon-uranium.fandom.com/wiki/Main_Page>
#' @source <https://github.com/HybridShivam/Pokemon>
"pokemon_dadk"
