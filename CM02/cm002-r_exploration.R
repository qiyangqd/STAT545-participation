number * 2 # If we run this first we will get an error because the object doesn't have a value.
number <- 5 + 2 
number * 2
a * 2

(times <- c(60, 40, 33, 15, 20, 55, 35)) # This will show the output
times / 60

mean(times)

(times <- c(60, 40, 33, 15,20,55,35))
mean (times)
sqrt(times)
range(times)

times < 30 # This is a comment
times == 20
times != 20
times > 20 & times < 50
times < 20 | times > 50
i <- which(times < 30)
sum(times < 30)
a <- all(times < 30)

#subsetting:
times[3]
times[-3]
times[c(2, 4)]
times[c(4, 2)]
times[1:5]
times[3, 5]
times[times < 30]
times
times[times > 50] <- 50
times[8] <- NA
times<- times * 2
times<- times / 2
mean(times, na.rm = TRUE) # remove NA
mean(times, 0, TRUE)
mean(na.rm = TRUE, x = times)
mean(times)
mean(times(2:5))
?mean # Help
mtcars
str(mtcars)
names(mtcars)
mtcars$mpg # a column
