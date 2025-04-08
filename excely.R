rm(list=ls())

str(iris)

unlist(lapply(iris[1:4], mean))
sapply(iris[1:4], mean)
apply (iris[1:4], 2, sd)

summary(iris$Species)

library(dplyr)
iris %>% group_by(Species) %>% summarise(pocty = n())

library(rvest)
data <- read_html("https://ki.ujep.cz/cs/historie/")
tabulky <- html_table(data, header = TRUE)
df <- tabulky[[2]]
df

pusobi <- df[df$`Působí na UJEP?` == "ANO", ]
nepusobi <- df %>% filter(df$ `Působí na UJEP?` == "NE")

seznam <- list("puvodni" = df, "stale na ujep" = pusobi, "davno pryc" = nepusobi)

library(writexl)
write_xlsx(seznam,"tabulka.xlsx")

indexy <- order(df$celkem_let,decreasing = TRUE)
df[indexy,]

df %>% arrange(desc(celkem_let)) -> serazene
serazene

df <- read.csv("StudentsPref.csv")
head(df)




