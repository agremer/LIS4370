data("mtcars")
head(mtcars, 6)
str(mtcars)

setClass("CarData", 
         slots = c(data = "data.frame"))

mtcars_s4 <- new("CarData", data = mtcars)

print(mtcars_s4)