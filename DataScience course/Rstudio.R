##### Data Science course ####

### First class - Install
# library (datasets)
# data(iris)
# View(iris)
# unique(iris$Species) # dá as opçoes de species
# 
# install.packages("GGally", repos = "https://cran.r-project.org", type= "source")

### Second Class - Visualization
# library(datasets)
# library(ggplot2)
# 
# # Load Data
# data(mtcars) 
# 
# # View first 5 rows
# head(mtcars, 5) 
# 
# # gives information:
# ?mtcars 
# # [, 1]	mpg	Miles/(US) gallon
# # [, 2]	cyl	Number of cylinders
# # [, 3]	disp	Displacement (cu.in.)
# # [, 4]	hp	Gross horsepower
# # [, 5]	drat	Rear axle ratio
# # [, 6]	wt	Weight (1000 lbs)
# # [, 7]	qsec	1/4 mile time
# # [, 8]	vs	Engine (0 = V-shaped, 1 = straight)
# # [, 9]	am	Transmission (0 = automatic, 1 = manual)
# # [,10]	gear	Number of forward gears
# # [,11]	carb	Number of carburetors
# 
# # create a scatterplot of displacement (disp) and miles per gallon (mpg)
# ggplot(aes(x=disp,y=mpg),data=mtcars)+geom_point()
# 
# # Add a title
# ggplot(aes(x=disp,y=mpg),data=mtcars)+geom_point()+ggtitle("Title: displacement vs miles per gallon")
# 
# # change axis name
# ggplot(aes(x=disp,y=mpg),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x = "x: Displacement", y = "y: Miles per Gallon")
# 
# #make vs a factor
# mtcars$vs <- as.factor(mtcars$vs)
# 
# # create boxplot of the distribution for v-shaped and straight Engine
# ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()
# 
# # My doing. Replace 0 and 1 by the name
# mtcars$vs <- as.character(mtcars$vs)
# mtcars["vs"][mtcars["vs"] == '0'] <- 'V-shaped'
# mtcars["vs"][mtcars["vs"] == '1'] <- 'straight'
# # Boxplot now with text
# ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()
# 
# #Color to the boxplots to help differentiate:
# ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + geom_boxplot(alpha=0.3) +
#   theme(legend.position="none")
# 
# # histogram
# ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)

### Third Class - Advanced visualization
library(datasets)
library(GGally)
data(iris)
ggpairs(iris, mapping=ggplot2::aes(colour = Species))
# In this case, a single line of code give a lot of information.
# It gives the data distribution of each collumns, each parameter saying.
# I cann see if there is any relatuon within any parameter


