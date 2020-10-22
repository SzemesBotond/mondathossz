mondatok1_5 <- list()
for (i in 1:length(sentence_length)) {
  mondatok1_5 [[1]] <- sentence_length[[1]][which(sentence_length[[1]] < 6)]
  mondatok1_5 [[2]] <- sentence_length[[2]][which(sentence_length[[2]] < 6)]
  mondatok1_5 [[3]] <- sentence_length[[3]][which(sentence_length[[3]] < 6)]
  }
mondatok6_10 <- list()
for (i in 1:length(sentence_length)) {
  mondatok6_10 [[1]] <- sentence_length[[1]][which(sentence_length[[1]] > 5)]
  mondatok6_10 [[1]] <- mondatok6_10[[1]][which(mondatok6_10[[1]] < 11)]
  mondatok6_10 [[2]] <- sentence_length[[2]][which(sentence_length[[2]] > 5)]
  mondatok6_10 [[2]] <- mondatok6_10[[2]][which(mondatok6_10[[2]] < 11)]
  mondatok6_10 [[3]] <- sentence_length[[3]][which(sentence_length[[3]] > 5)]
  mondatok6_10 [[3]] <- mondatok6_10[[3]][which(mondatok6_10[[3]] < 11)]}
mondatok11_15 <- list()
for (i in 1:length(sentence_length)) {
  mondatok11_15 [[1]] <- sentence_length[[1]][which(sentence_length[[1]] > 10)]
  mondatok11_15 [[1]] <- mondatok11_15[[1]][which(mondatok11_15[[1]] < 16)]
  mondatok11_15 [[2]] <- sentence_length[[2]][which(sentence_length[[2]] > 10)]
  mondatok11_15 [[2]] <- mondatok11_15[[2]][which(mondatok11_15[[2]] < 16)]
  mondatok11_15 [[3]] <- sentence_length[[3]][which(sentence_length[[3]] > 10)]
  mondatok11_15 [[3]] <- mondatok11_15[[3]][which(mondatok11_15[[3]] < 16)]}
mondatok16_20 <- list()
for (i in 1:length(sentence_length)) {
  mondatok16_20 [[1]] <- sentence_length[[1]][which(sentence_length[[1]] > 15)]
  mondatok16_20 [[1]] <- mondatok16_20[[1]][which(mondatok16_20[[1]] < 21)]
  mondatok16_20 [[2]] <- sentence_length[[2]][which(sentence_length[[2]] > 15)]
  mondatok16_20 [[2]] <- mondatok16_20[[2]][which(mondatok16_20[[2]] < 21)]
  mondatok16_20 [[3]] <- sentence_length[[3]][which(sentence_length[[3]] > 15)]
  mondatok16_20 [[3]] <- mondatok16_20[[3]][which(mondatok16_20[[3]] < 21)]}
mondatok21_25 <- list()
for (i in 1:length(sentence_length)) {
  mondatok21_25 [[1]] <- sentence_length[[1]][which(sentence_length[[1]] > 20)]
  mondatok21_25 [[1]] <- mondatok21_25[[1]][which(mondatok21_25[[1]] < 26)]
  mondatok21_25 [[2]] <- sentence_length[[2]][which(sentence_length[[2]] > 20)]
  mondatok21_25 [[2]] <- mondatok21_25[[2]][which(mondatok21_25[[2]] < 26)]
  mondatok21_25 [[3]] <- sentence_length[[3]][which(sentence_length[[3]] > 20)]
  mondatok21_25 [[3]] <- mondatok21_25[[3]][which(mondatok21_25[[3]] < 26)]}
mondatok26_30 <- list()
for (i in 1:length(sentence_length)) {
  mondatok26_30 [[1]] <- sentence_length[[1]][which(sentence_length[[1]] > 25)]
  mondatok26_30 [[1]] <- mondatok26_30[[1]][which(mondatok26_30[[1]] < 31)]
  mondatok26_30 [[2]] <- sentence_length[[2]][which(sentence_length[[2]] > 25)]
  mondatok26_30 [[2]] <- mondatok26_30[[2]][which(mondatok26_30[[2]] < 31)]
  mondatok26_30 [[3]] <- sentence_length[[3]][which(sentence_length[[3]] > 25)]
  mondatok26_30 [[3]] <- mondatok26_30[[3]][which(mondatok26_30[[3]] < 31)]}
mondatok31_35 <- list()
for (i in 1:length(sentence_length)) {
  mondatok31_35 [[1]] <- sentence_length[[1]][which(sentence_length[[1]] > 30)]
  mondatok31_35 [[1]] <- mondatok31_35[[1]][which(mondatok31_35[[1]] < 36)]
  mondatok31_35 [[2]] <- sentence_length[[2]][which(sentence_length[[2]] > 30)]
  mondatok31_35 [[2]] <- mondatok31_35[[2]][which(mondatok31_35[[2]] < 36)]
  mondatok31_35 [[3]] <- sentence_length[[3]][which(sentence_length[[3]] > 30)]
  mondatok31_35 [[3]] <- mondatok31_35[[3]][which(mondatok31_35[[3]] < 36)]}
mondatok36_40 <- list()
for (i in 1:length(sentence_length)) {
  mondatok36_40 [[1]] <- sentence_length[[1]][which(sentence_length[[1]] > 35)]
  mondatok36_40 [[1]] <- mondatok36_40[[1]][which(mondatok36_40[[1]] < 41)]
  mondatok36_40 [[2]] <- sentence_length[[2]][which(sentence_length[[2]] > 35)]
  mondatok36_40 [[2]] <- mondatok36_40[[2]][which(mondatok36_40[[2]] < 41)]
  mondatok36_40 [[3]] <- sentence_length[[3]][which(sentence_length[[3]] > 35)]
  mondatok36_40 [[3]] <- mondatok36_40[[3]][which(mondatok36_40[[3]] < 41)]}
mondatok41_45 <- list()
for (i in 1:length(sentence_length)) {
  mondatok41_45 [[1]] <- sentence_length[[1]][which(sentence_length[[1]] > 40)]
  mondatok41_45 [[1]] <- mondatok41_45[[1]][which(mondatok41_45[[1]] < 46)]
  mondatok41_45 [[2]] <- sentence_length[[2]][which(sentence_length[[2]] > 40)]
  mondatok41_45 [[2]] <- mondatok41_45[[2]][which(mondatok41_45[[2]] < 46)]
  mondatok41_45 [[3]] <- sentence_length[[3]][which(sentence_length[[3]] > 40)]
  mondatok41_45 [[3]] <- mondatok41_45[[3]][which(mondatok41_45[[3]] < 46)]}
mondatok46_50 <- list()
for (i in 1:length(sentence_length)) {
  mondatok46_50 [[1]] <- sentence_length[[1]][which(sentence_length[[1]] > 45)]
  mondatok46_50 [[1]] <- mondatok46_50[[1]][which(mondatok46_50[[1]] < 51)]
  mondatok46_50 [[2]] <- sentence_length[[2]][which(sentence_length[[2]] > 45)]
  mondatok46_50 [[2]] <- mondatok46_50[[2]][which(mondatok46_50[[2]] < 51)]
  mondatok46_50 [[3]] <- sentence_length[[3]][which(sentence_length[[3]] > 45)]
  mondatok46_50 [[3]] <- mondatok46_50[[3]][which(mondatok46_50[[3]] < 51)]}
mondatok50_100 <- list()
for (i in 1:length(sentence_length)) {
  mondatok50_100 [[1]] <- sentence_length[[1]][which(sentence_length[[1]] > 50)]
  mondatok50_100 [[1]] <- mondatok50_100[[1]][which(mondatok50_100[[1]] < 100)]
  mondatok50_100 [[2]] <- sentence_length[[2]][which(sentence_length[[2]] > 50)]
  mondatok50_100 [[2]] <- mondatok50_100[[2]][which(mondatok50_100[[2]] < 100)]
  mondatok50_100 [[3]] <- sentence_length[[3]][which(sentence_length[[3]] > 50)]
  mondatok50_100 [[3]] <- mondatok50_100[[3]][which(mondatok50_100[[3]] < 100)]
}
mondatok_100 <- list ()
for (i in 1:length(sentence_length)) {
  mondatok_100 [[1]] <- sentence_length[[1]][which(sentence_length[[1]] > 99)]
  mondatok_100[[2]] <- sentence_length[[2]][which(sentence_length[[2]] > 99)]
  mondatok_100[[3]] <- sentence_length[[3]][which(sentence_length[[3]] > 99)]}
  

mondatok1832_1869 <- c(list(mondatok1_5[[1]], mondatok6_10[[1]], mondatok11_15[[1]], mondatok16_20[[1]], mondatok21_25[[1]], mondatok26_30[[1]], mondatok31_35[[1]], mondatok36_40[[1]], mondatok41_45[[1]], mondatok46_50[[1]], mondatok50_100[[1]], mondatok_100[[1]]))
mondatok1872_1966 <- c(list(mondatok1_5[[2]], mondatok6_10[[2]], mondatok11_15[[2]], mondatok16_20[[2]], mondatok21_25[[2]], mondatok26_30[[2]], mondatok31_35[[2]], mondatok36_40[[2]], mondatok41_45[[2]], mondatok46_50[[2]], mondatok50_100[[2]], mondatok_100[[2]]))
mondatok1968_2005 <- c(list(mondatok1_5[[3]], mondatok6_10[[3]], mondatok11_15[[3]], mondatok16_20[[3]], mondatok21_25[[3]], mondatok26_30[[3]], mondatok31_35[[3]], mondatok36_40[[3]], mondatok41_45[[3]], mondatok46_50[[3]], mondatok50_100[[3]], mondatok_100[[3]]))

mondat1 <- list ()
for (i in 1:length(mondatok1832_1869)){
  mondat1[[i]] <- length(mondatok1832_1869[[i]])}
mondat2 <- list ()
for (i in 1:length(mondatok1832_1869)){
  mondat2[[i]] <- length(mondatok1872_1966[[i]])}
mondat3 <- list ()
for (i in 1:length(mondatok1832_1869)){
  mondat3[[i]] <- length(mondatok1968_2005[[i]])}


mondatok_szama <- list ()
for (i in 1:length(sentence_length)){
  mondatok_szama[[i]] <- length(sentence_length[[i]])
}

mondatarany1 <- list () 
for (i in 1:length(mondat1)){
  mondatarany1[[i]] <- (mondat1[[i]]/mondatok_szama[[1]])*100
  }
mondatarany2 <- list () 
for (i in 1:length(mondat1)){
  mondatarany2[[i]] <- (mondat2[[i]]/mondatok_szama[[2]])*100
  }
mondatarany3 <- list () 
for (i in 1:length(mondat1)){
  mondatarany3[[i]] <- (mondat3[[i]]/mondatok_szama[[3]])*100
  }


m1832_1869 <- as.numeric(mondatarany1)
m1872_1966 <- as.numeric(mondatarany2)
m1968_2005 <- as.numeric(mondatarany3)
mertek <- c("01-05", "06-10","11-15", "16-20", "21-25", "26-30", "31-35", "36-40", "41-45", "46-50", "50-99", "99+")

mon <- data.frame(m1832_1869, m1872_1966,m1968_2005, mertek)
colnames(mon) <- c("m1832_1869", "m1872_1966", "m1968_2005", "Mondathossz")

library(plotly)

fig <- plot_ly(mon, x = ~Mondathossz, y = ~m1832_1869, type = 'bar', name = "1832_1869")
fig <- fig %>% add_trace(y = ~m1872_1966, name = "1872_1966")
fig <- fig %>% add_trace(y = ~m1968_2005, name = "1968_2005")
fig <- fig %>% layout(yaxis = list(title = 'Gyakoriság arány'), barmode = 'group')
fig

fig<- fig %>% layout(xaxis = list(range = c(4.5, 12)), yaxis = list(range = c(0,5)))
fig



