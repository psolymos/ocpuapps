example1 <-
function(id1=character(0), id2=character(0)) {
    if (!is.null(dim(id1)))
        id1 <- id1[,1L]
    if (!is.null(dim(id2)))
        id2 <- id2[,1L]
    n1 <- length(id1)
    if (n1 < 1L)
        stop("id1 must have length > 0")
    n2 <- length(id2)
    if (n2 < 1L)
        stop("id2 must have length > 0")
    z <- matrix(1L:(n1 * n2), n1, n2)
    dimnames(z) <- list(id1, id2)
    z
}
#example1(c("A", "B", "C"), c("a", "b"))
#example1(data.frame(x=c("A", "B", "C")), data.frame(y=c("a", "b")))

Calculate <- function(x) eval(parse(text=x))
