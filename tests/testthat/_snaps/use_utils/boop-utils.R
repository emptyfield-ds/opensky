`%nin%` <- Negate(`%in%`)

`%||%` <- function(x, y) {
  if (is_null(x)) {
    y
  } else {
    x
  }
}
