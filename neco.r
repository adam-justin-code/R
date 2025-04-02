text <- "Well there s egg lamo text What ?"



v <- scan(text=text, what= " ")
f <- factor(v)
summary(f)
f |> summary()


A <- matrix(c(-1, 1, -1, 1, -2, 1, 1, -3, 1, 2, -3, 1, 2, 3, 4, -1),
            nrow = 4, ncol = 4, byrow = TRUE)
b <- c(0, 0, 0, 0)
b <- rep(0,4)
b <- integer(4)
solve(A,b)

A <- matrix(c(4, 2, 2, 4, 6, 8, -2, 2, 4),
            nrow = 3, ncol = 3, byrow = TRUE)

B <- A
B[,]<-0


B[1,1] <- sum(A[1,] * A[,1])
B[2,2] <- sum(A[2,] * A[,2])
B[3,3] <- sum(A[3,] * A[,3])

C <- A%*%B
C[C<0] <- abs(C[C<0])
C





