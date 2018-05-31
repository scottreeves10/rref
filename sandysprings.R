library(rgdal)
library(ggplot2)
library(mapdata)
library(tidyverse)
library(maptools)

cl <- readOGR("F:/datasets/sandyspringsga/City_Limit__Sandy_Springs_Georgia", "City_Limit__Sandy_Springs_Georgia")
cc <- readOGR("F:/datasets/sandyspringsga/City_Council__Sandy_Springs_Georgia", "City_Council__Sandy_Springs_Georgia")

summary(cl)
names(cl)

summary(cc)
names(cc)
str(cc@data)

plot(cc)

cc_df <- broom::tidy(cc, region = "DISTRICT")
lapply(cc_df, class)


ggplot() + 
  geom_polygon(data = cl, aes(x = long, y = lat, group = group),fill = NA, color = "red") + 
  geom_polygon(data = cc, aes(x = long, y = lat, group = group),fill = NA, color = "blue") + 
  coord_quickmap()

ggplot(data = cc) + 
  geom_polygon(aes(x = long, y = lat, fill = cc@data$DistrictLa, group = group), color = "white") + 
  coord_quickmap() 
  # guides(fill = FALSE)  # do this to leave off the color legend

ggplot() + 
  geom_polygon(data = cc, aes(x = long, y = lat, fill = cc@data$DISTRICT, group = group), color = "white") + 
  coord_quickmap() +
  guides(fill = FALSE)  # do this to leave off the color legend


data.frame(s1)
spplot(s1, z="SNG_ST_NO")
