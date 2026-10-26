# Tema gráfico e paleta comuns a todos os notebooks, relatório e slides.
# Paleta categórica testada para daltonismo (ordem fixa, nunca reciclada).

library(ggplot2)

cores <- c(
  azul    = "#2a78d6",
  laranja = "#eb6834",
  aqua    = "#1baf7a",
  amarelo = "#eda100",
  magenta = "#e87ba4",
  verde   = "#008300",
  violeta = "#6250d6",
  vermelho = "#e34948"
)
cor_principal <- cores[["azul"]]
cor_destaque  <- cores[["laranja"]]
cor_neutra    <- "#898781"

tema_ssa <- function(base_size = 12) {
  theme_minimal(base_size = base_size) +
    theme(
      plot.title       = element_text(face = "bold", colour = "#0b0b0b"),
      plot.subtitle    = element_text(colour = "#52514e"),
      plot.caption     = element_text(colour = "#898781", size = rel(0.75)),
      axis.title       = element_text(colour = "#52514e"),
      axis.text        = element_text(colour = "#898781"),
      panel.grid.minor = element_blank(),
      panel.grid.major = element_line(colour = "#e1e0d9", linewidth = 0.3),
      legend.position  = "top",
      legend.justification = "left",
      plot.background  = element_rect(fill = "#fcfcfb", colour = NA),
      strip.text       = element_text(face = "bold", colour = "#52514e")
    )
}
theme_set(tema_ssa())

fonte_imdb <- "Fonte: IMDb Non-Commercial Datasets"

# Grava a figura em figuras/ (usada depois pelo relatório e pelos slides)
guardar_fig <- function(plot, nome, largura = 8, altura = 5) {
  ggsave(file.path("figuras", paste0(nome, ".png")), plot,
         width = largura, height = altura, dpi = 150, bg = "#fcfcfb")
  invisible(plot)
}
