#import data
mov <- read.csv(file.choose())
head(mov)

library(ggplot2)

#filter #1
filt <- (mov$Genre == "action") | (mov$Genre == "adventure") | (mov$Genre == "animation") | 
  (mov$Genre == "comedy") | (mov$Genre == "drama")
#filter #2
filt2 <- mov$Studio %in% c("Buena Vista Studios", "WB", "Fox", "Universal", "Sony", "Paramount Picture")

mov2 <- mov[filt & filt2, ]
head(mov2)

#prepare the plot's data and aes layers:
p <- ggplot(data=mov2, aes(x=Genre, y=Gross...US))
#add geometries
p + geom_jitter(aes(size=Budget...mill., color=Studio)) + geom_boxplot(alpha = 0.7, outlier.color = NA)
q <- p + geom_jitter(aes(size=Budget...mill., color=Studio)) + geom_boxplot(alpha = 0.7, outlier.color = NA)

#non-data ink
q <- q + xlab("Genre") + ylab("Gross % US") + ggtitle("Domestic Gross % by Genre")
q

#theme
q <- q + theme(axis.title.x = element_text(colour="Blue", size=15),
               axis.title.y = element_text(colour="Blue", size=15),
               axis.text.x = element_text(size=15),
               axis.text.y = element_text(size=15),
               plot.title = element_text(size=20),
               legend.title = element_text(size=10),
               legend.text = element_text(size = 10),
               text = element_text(family="Comic Sans MS"))
q

#Final touch
q$labels$size <- "Budget $M"
q
