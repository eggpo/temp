
.libPaths()

installed.packages()

library(help='ggplot2')

install.packages("dplyr",  repos='http://cran.us.r-project.org')

if(!requireNamespace("plyr")) install.packages('plyr', repos='http://cran.us.r-project.org')

update.packages(repos='http://cran.us.r-project.org')

remove.packages(c("plyr", 'dplyr'))

library(dplyr)

detach("package:dplyr", unload=T)

search()

sessionInfo()
