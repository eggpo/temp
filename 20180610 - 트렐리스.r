
library(ggplot2)

ggplot(mpg, aes(x=displ, y=hwy)) + geom_point() + facet_grid(drv ~ .)

ggplot(mpg, aes(x=displ, y=hwy)) + geom_point() + facet_grid(. ~ drv )

ggplot(mpg, aes(x=displ, y=hwy)) + geom_point() + facet_grid(drv ~ cyl)

ggplot(mpg, aes(x=displ, y=hwy)) + geom_point() + facet_wrap( ~ class)

ggplot(mpg, aes(x=displ, y=hwy)) + geom_point() + facet_wrap( ~ class, nrow=2)

ggplot(mpg, aes(x=displ, y=hwy)) + geom_point() + facet_wrap( ~ class, nrow=4)

p <- ggplot(mpg, aes(x=displ, y=hwy)) + geom_point()

p + facet_grid(drv ~ cyl, scales = "free_y")

p + facet_grid(drv ~ cyl, scales = "free_x")

p + facet_grid(drv ~ cyl, scales = "free")

mpg2 <- mpg

mpg2$drv <- as.factor(mpg2$drv)

levels(mpg2$drv)=="4"

# 4를 4wd로, f를 Front로, r을 Rear로 이름을 바꾼다.
levels(mpg2$drv)[levels(mpg2$drv)=="4"] <- "4wd"
levels(mpg2$drv)[levels(mpg2$drv)=="f"] <- "Front"
levels(mpg2$drv)[levels(mpg2$drv)=="r"] <- "Rear"

mpg2$drv

ggplot(mpg2, aes(x=displ, y=hwy)) + geom_point() + facet_grid(drv ~ .)
