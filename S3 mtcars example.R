data("mtcars")
head(mtcars, 6)
str(mtcars)

car_data <- function(data) {
  obj <- list(data = data)
  class(obj) <- "car_data"
  return(obj)
}

mtcars_obj <- car_data(mtcars)

print(mtcars_obj)

