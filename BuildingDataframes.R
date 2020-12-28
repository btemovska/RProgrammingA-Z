mydf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, Regions_2012_Dataset)
#data.frame function works just as cbind
head(mydf)
str(mydf)
levels(mydf$Regions_2012_Dataset)
  #"Africa" "Asia"  "Europe"  "Middle East"  "Oceania" "The Americas"

colnames(mydf) <- c("Country", "Code", "Region")
#               Country Code       Region
# 1                Aruba  ABW The Americas
# 2          Afghanistan  AFG         Asia
# 3               Angola  AGO       Africa
# 4              Albania  ALB       Europe
# 5 United Arab Emirates  ARE  Middle East
# 6            Argentina  ARG The Americas


  
#--------------OR you could also do this
mydf <- data.frame(Country= Countries_2012_Dataset, 
                   Code=Codes_2012_Dataset, 
                   Region=Regions_2012_Dataset)







