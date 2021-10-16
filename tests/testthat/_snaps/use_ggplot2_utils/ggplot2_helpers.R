geom_point2 <- function(mapping = NULL,
                        data = NULL,
                        stat = "identity",
                        position = "identity",
                        ...,
                        na.rm = FALSE,
                        show.legend = NA,
                        inherit.aes = TRUE) {
  ggplot2::layer(
    data = data, mapping = mapping, stat = stat, geom = GeomPoint2,
    position = position, show.legend = show.legend, inherit.aes = inherit.aes,
    params = list(na.rm = na.rm, ...)
  )
}

GeomPoint2 <- ggplot2::ggproto(
  "GeomPoint2",
  ggplot2::GeomPoint,
  default_aes = ggplot2::aes(
    shape = 21,
    colour = "white",
    size = 2.25,
    fill = "#0072B2",
    alpha = .95,
    stroke = 0.45
  )
)

theme_minimal2 <- function(base_size = 14, base_family = "", base_line_size = base_size / 22, base_rect_size = base_size / 22) {
  list(
    ggplot2::theme_minimal(
      base_size = base_size,
      base_family = base_family,
      base_line_size = base_line_size,
      base_rect_size = base_rect_size
    ),
    ggplot2::theme(
      panel.grid.minor = ggplot2::element_blank()
    )
  )
}

theme_minimal2_h <- function(base_size = 14, base_family = "", base_line_size = base_size / 22, base_rect_size = base_size / 22) {
  list(
    ggplot2::theme_minimal(
      base_size = base_size,
      base_family = base_family,
      base_line_size = base_line_size,
      base_rect_size = base_rect_size
    ),
    ggplot2::theme(
      panel.grid.major.x = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank()
    )
  )
}

theme_minimal2_v <- function(base_size = 14, base_family = "", base_line_size = base_size / 22, base_rect_size = base_size / 22) {
  list(
    ggplot2::theme_minimal(
      base_size = base_size,
      base_family = base_family,
      base_line_size = base_line_size,
      base_rect_size = base_rect_size
    ),
    ggplot2::theme(
      panel.grid.major.y = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank()
    )
  )
}
