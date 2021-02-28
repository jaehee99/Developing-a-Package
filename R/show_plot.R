#' Title
#'
#' @param o
#'
#' @return This function returns graph
#' @export show_plot
#'
#' @examples show_plot(my_data)

show_plot <- function(o){
  if(!(tibble::as_tibble(o)))
    stop("Do not meet requirements")
  if(!(ncol(o)==4))
    stop("Do not meet requirements")
  if(! all(o[[4]]>0))
    stop("Do not meet requirements")
  if(!(is.numeric(o[[1]])))
    stop("Do not meet requirements")
  if(!(is.numeric(o[[2]])))
    stop("Do not meet requirements")
  if (!(is.numeric(o[[3]])))
    stop("Do not meet requirements")
  if(!(as.integer(o[[4]])))
    stop("Do not meet requirements")

  df <- tibble(n=0, y = 0)
  o <- tibble(o)

  for (i in 1:nrow(o)) {
    x <- c(o[[i,1]], o[[i,2]], o[[i,3]])
    n <- o[[i,4]]
    myseq_n(x,n) -> df[i,2]
    n -> df[i,1]
  }


  df[,2] <- round(df[,2], digits = 3)
  plot <- df %>%
    ggplot2::ggplot(mapping = ggplot2::aes(x = n, y = y)) +
    ggplot2::geom_line()+
    ggplot2::labs(title = paste("My Sequence:", df[,2]))

  return(plot)
}


