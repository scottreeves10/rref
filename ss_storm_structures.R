library(rgdal)

s1 <- readOGR("F:/datasets/sandyspringsga/Stormwater_Structures__Sandy_Springs_Georgia", "Stormwater_Structures__Sandy_Springs_Georgia")
summary(s1)
names(s1)
data.frame(s1)
spplot(s1, z="SNG_ST_NO")
