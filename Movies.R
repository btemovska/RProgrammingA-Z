#-------------what is a FACTOR?
movies <- read.csv(file.choose())
head(movies)
colnames(movies)<-c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(movies)
tail(movies)
str(movies)
summary(movies)

movies$Year <- factor(movies$Year) #now it converts it into a categorical variable

#-------------Aesthetics
library(ggplot2)
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))
#add geometry
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating)) + geom_point()
#add colour
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre)) + geom_point()
#add size
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=BudgetMillions)) + 
    geom_point()
#>>> This #1 (we will provie it)

#-------------Plotting with Layers
p <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=BudgetMillions))
#point
p + geom_point() #dotted graph
#lines
p + geom_line() #line graph
#multiple layers
p + geom_line() + geom_point()

#-------------Overriding Asthethics
q <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=BudgetMillions))
#add geom layer
q + geom_point()
#overriding aes
q + geom_point(aes(size=CriticRating))
q + geom_point(aes(colour=BudgetMillions))
q + geom_point(aes(x=BudgetMillions)) + xlab("Budget Millions $$")
q + geom_line() + geom_point()
q + geom_line(size=1) + geom_point()

#-------------Mapping vs Setting
r <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))
r + geom_point()
#add color
#1 by mapping
r + geom_point(aes(colour=Genre))
r + geom_point(aes(size=BudgetMillions))
#2 by setting
r + geom_point(color="DarkGreen")
r + geom_point(size = 5)

#-------------Histograms & Density Charts
s <- ggplot(data=movies, aes(x=BudgetMillions))
s + geom_histogram(binwidth = 10)
#add colour
s + geom_histogram(binwidth = 10, aes(fill=Genre))
#add a border
s + geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black")
#density charts:
s + geom_density(aes(fill=Genre), position="stack")

#-------------Starting Layer Tips
t <- ggplot(data=movies, aes(x=AudienceRating))
t + geom_histogram(binwidth = 10, fill="White", colour="Blue")
#another way
t <- ggplot(data=movies)
t + geom_histogram(binwidth = 10, aes(x=AudienceRating),
                   fill="White", colour="Blue")
#>>>>
t + geom_histogram(binwidth = 10, aes(x=CriticRating),
                   fill="White", colour="Blue")

#-------------Statistical Transformations
#observe trends/relationships with geom_smooth()
u <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre))
u + geom_point() + geom_smooth(fill=NA)
#boxplots
u <- ggplot(data=movies, aes(x=Genre, y=AudienceRating, colour=Genre))
u + geom_boxplot() 
u + geom_boxplot(size=1.2)
u + geom_boxplot(size=1.2) + geom_point()
u + geom_boxplot(size=1.2) + geom_jitter()
u + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)

u <- ggplot(data=movies, aes(x=Genre, y=CriticRating, colour=Genre))
u + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)

#-------------Using Facets
v <- ggplot(data=movies, aes(x=BudgetMillions))
v + geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black")
#facets
v + geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black") +
  facet_grid(Genre~., scale = "free")
#scatterplot
w <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre))
w + geom_point(size=3)
#facets
w + geom_point(size=3) + facet_grid(Genre~.)
w + geom_point(size=3) + facet_grid(.~Year)
w + geom_point(size=3) + facet_grid(Genre~Year)
w + geom_point(size=3) + geom_smooth() + facet_grid(Genre~Year)
w + geom_point(aes(size=BudgetMillions)) + geom_smooth() + facet_grid(Genre~Year)


#-------------Coodinates
m <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                             size=BudgetMillions, colour=Genre))
m + geom_point()
m + geom_point() + xlim(50, 100) + ylim(50, 100)
#how to zoom in
n <- ggplot(data=movies, aes(x=BudgetMillions))
n + geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black")+
  coord_cartesian(ylim = c(0, 50))

w + geom_point(aes(size=BudgetMillions)) + geom_smooth() + facet_grid(Genre~Year) +
  coord_cartesian(ylim=c(0,100))

#-------------Theme (formatting the axis)
o <- ggplot(data=movies, aes(x=BudgetMillions))
h<-o + geom_histogram(binwidth = 10, aes(fill=Genre), colour="Black")
#add axes label
h
h + xlab("Money Axis") + ylab("Number of Movies")
#label formatting
h + xlab("Money Axis") + ylab("Number of Movies") + 
  theme(axis.title.x= element_text(colour="DarkGreen", size=30),
        axis.title.y=element_text(colour="Red", size=30))
#tick mark formatting
h + xlab("Money Axis") + ylab("Number of Movies") + 
  theme(axis.title.x= element_text(colour="DarkGreen", size=30),
        axis.title.y=element_text(colour="Red", size=30),
        axis.text.x = element_text(size=20))
#legend formatting
h + xlab("Money Axis") + ylab("Number of Movies") + 
  theme(axis.title.x= element_text(colour="DarkGreen", size=30),
        axis.title.y=element_text(colour="Red", size=30),
        axis.text.x = element_text(size=20),
        legend.title = element_text(size = 30),
        legend.text = element_text(size=20),
        legend.position = c(1,1),
        legend.justification = c(1, 1))
#title of the plot
h + xlab("Money Axis") + ylab("Number of Movies") + 
  ggtitle("Movie Budget Distribution") +
  theme(axis.title.x= element_text(colour="DarkGreen", size=30),
        axis.title.y=element_text(colour="Red", size=30),
        axis.text.x = element_text(size=20),
        legend.title = element_text(size = 30),
        legend.text = element_text(size=20),
        legend.position = c(1,1),
        legend.justification = c(1, 1), 
        plot.title = element_text(colour = "DarkBlue", size = 40, 
                                  family = "Curier"))









