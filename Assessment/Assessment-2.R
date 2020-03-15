x <- c(2, 43, 27, 96, 18)

# Question 1
order(x)

rank(x)

sort(x)

min(x)

# Question 2

min(x)

which.min(x)

max(x)

which.max(x)

# Question 3
name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)
speed <-distance/(time/60)

df_mph <- data.frame(name, distance, time, speed)
