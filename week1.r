setwd('~/Desktop/CourseraDataScience/4EDA/week1/')

polution <- read.csv("data/avgpm25.csv", colClasses = c("numeric", "character","factor","numeric","numeric")
            )
head(polution)

boxplot(polution$pm25, col = "blue")

hist(polution$pm25, col = "green")
rug(polution$pm25)
abline(v = 12, lwd = 2) # put a vertical line at 12
abline(v = median(polution$pm25), col = "magenta", lwd = 4)


boxplot(polution$pm25, col = "blue")
abline(h =12)

barplot(table(polution$region, col = "wheat", main = "Numbers of Counties in each region"))

# plot two dimentioned data
# multiple/overayed 1-D plot(Lattice,ggplot2)
# scatterplot
# smooth scatterplot

# 2 dimentions
# overlayed/ multiple 2-D plots; coplots
# use color, size, shape to add dimentions
# spinning plots
# actual 3-D plots(not that useful)



# muitiplt boxplots
boxplot(pm25 ~ region. data = polution, cl = "red")

# multiple histograms
par(mfrow = c(2,1), mar = c(4,4,2,1))
hist(subset(polution, region == "east"$pm25, col = "green"))
hist(subset(polution, region == "west"$pm25, col = "green"))

# scatterplot
with(polution, plot(latitude, pm25))
abline(h = 12, lwd = 2, lty = 2)
## multiple scatterplot
par(mfrow = c(1,2), mar = c(5,4,2,1))
with(subset(polution, region = "west"), plot(latitude, pm25, main = "West"))
with(subset(polution, region = "east"), plot(latitude, pm25, main = "East"))


## There are 3 major plotting systems
# the first is basic plotting system
# pros: convenient
# cons: cant modify after creation, ie change margins
#      hard to translate to other graphical languages, just lines of R commands
library(datasets)
data(cars)
with(cars, plot(speed, fist))

# the second plotting system is Lattice system
# pros: plots are created with a single function call(xyplot, bwplot...)
# most usefl for conditioning types of plots: looking at how y changes with x across level of z
# things like margins/spacing set automatically because entire plot is specified at once
# good for putting many plots at once
library(lattice)
state <- data.frame(state.x77, region = state.region)
xyplot(Life.Exp ~ Income | region, data = state, layout = c(4,1))


# the third is ggplot system
# spluts the differences betweenbase and lattice in  number of ways
# automaticallt deals with spacings, text, titles but also allows you to annotate by "adding" to a plot
# superficialsimilarity to lattice but generally easier/more intuitive to use
# default mode makes many choices for you(but you can still customize to your hears's desire)
library(ggplot2)
data(mpg)
qplot(displ,hwy,data = mgp)


## the core plotting system: graphics, grDevices
# graphics: plot, hist, boxplot...
# grDiveces: X11, PDF, PostScript, PNG, etc

# graphics
library(datasets)
hist(airquality$Ozone)
with(airquality,plot(Wind,Ozone))
airquality <- transform(airquality,Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab = "Month", ylab = "Ozone(ppb)")
# basic terms:
# pch: plotting symbol; lty: line type;  lwd: line width;
# col: plotting color, colors()
# xlab: x label; ylab: y label;
# las: orientation of the axis label on the plot
### call oar("lty") to check current choice
# bg: background color;  mar: margin size;
# oma: the outer margin size;
# mfrow: number of plots per row
# mfcol: number of plots per columns

# basic plotting functions
# plot: make a scatterpot or other types of plot depending on the class o the object beinf plotted
# lines: add lines to a plot,





