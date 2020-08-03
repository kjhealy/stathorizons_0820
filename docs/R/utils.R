prex <- function(x = NULL,
                 input = NULL,
                 outfile = NULL,                # <-- different from reprex
                 venue = c("gh", "r", "rtf", "html", "so", "ds"),
                 
                 render = TRUE,
                 
                 advertise       = FALSE,       # <-- different from reprex
                 session_info    = opt(FALSE),
                 style           = opt(FALSE),
                 html_preview    = opt(TRUE),
                 comment         = opt("#>"),
                 tidyverse_quiet = opt(TRUE),
                 std_out_err     = opt(FALSE),
                 show) {
  if (!missing(show)) {
    html_preview <- show
    warning(
      "`show` is deprecated, please use `html_preview` instead",
      immediate. = TRUE, call. = FALSE
    )
  }
  
  reprex:::reprex_impl(
    x_expr = substitute(x),
    input = input, outfile = outfile,
    venue = venue,
    
    render = render,
    new_session = FALSE,                        # <-- different from reprex()
    
    advertise       = advertise,
    session_info    = session_info,
    style           = style,
    comment         = comment,
    tidyverse_quiet = tidyverse_quiet,
    std_out_err     = std_out_err,
    html_preview    = html_preview
  )
}

prex_html <- function(...) prex(..., venue = "html")
prex_r    <- function(...) prex(..., venue = "r")
prex_rtf  <- function(...) prex(..., venue = "rtf")
