
input.dir <- "C:/Users/Szemes B/Desktop/TextAnalysisWithR/data/magyar_regeny/regenyek_magyarlanc"
files.v <- dir(input.dir, "\\.txt$")
my.corpus.l <- list ()
for(i in 1:length(files.v)){
  my.corpus.l [[i]] <- read.table(paste(input.dir, files.v[[i]], sep="/"), header = FALSE, fill = TRUE, encoding = "UTF-8" )
}


library(dplyr)
fonev <- list ()
for(i in 1:length(my.corpus.l)){
  fonev [[i]] <- filter(my.corpus.l[[i]], V3 == "NOUN")
} 
ige <- list()
for(i in 1:length(my.corpus.l)){
  ige [[i]] <- filter(my.corpus.l[[i]], V3 == "VERB")
} 
melleknev <- list ()
for(i in 1:length(my.corpus.l)){
  melleknev [[i]] <- filter(my.corpus.l[[i]], V3 == "ADJ")
} 

fonev_szam <- list ()
for(i in 1:length(my.corpus.l)){
  fonev_szam [[i]] <- nrow(fonev[[i]])
}  
ige_szam <- list ()
for(i in 1:length(my.corpus.l)){
  ige_szam [[i]] <- nrow(ige[[i]])
}  
melleknev_szam <- list ()
for(i in 1:length(my.corpus.l)){
  melleknev_szam [[i]] <- nrow(melleknev[[i]])
}


as.character(fonev_szam)
