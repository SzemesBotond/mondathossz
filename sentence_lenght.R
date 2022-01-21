#metaadat a magyar_regeny_100_jav2 tablazat elso 4 oszlopa, vagolaprol
#de kulon tablazatbol is betoltheto

metaadat <- read.table(file = "clipboard", 
                       sep = "\t", header=TRUE)

#korpusz betoltese - elotte regex kiszedi a romai szamokat es a "-jeleket
input.dir <- "C:/Users/DELL/Desktop/TextAnalysisR/data/magyar_regeny/évtized"
files.v <- dir(input.dir, "\\.txt$")
make.file.l <- function(files.v, input.dir){
  text.l <- list()
  for(i in 1:length(files.v)){
    text.v <- scan(paste(input.dir, files.v[i], sep="/"),
                   what="character", sep="\f", quote = "", encoding = "UTF-8")
  text.l[[files.v[i]]] <- text.v
  }
return(text.l)
}
my.corpus.l <- make.file.l(files.v, input.dir)

#korpusz elokeszitese: nem listazni; oldalszamok kivetel, 
#gondolatjel utani nagybetu, rovidites, idezojel,
#zarojelen beluli irasjel
regenyek <- c()
for (i in 1:length(my.corpus.l)) {
  regenyek[[i]] <- unlist(my.corpus.l[[i]], recursive = TRUE, use.names = TRUE)
  regenyek [[i]] <- gsub("([0-9]+)([A-zöüóőúéáű])", "\\2", regenyek[[i]])
  regenyek [[i]] <- gsub("(– )([A-ZÖÜÓŐÚÉÁŰ])", "\\2", regenyek[[i]])
  regenyek [[i]] <- gsub("(- )([A-ZÖÜÓŐÚÉÁŰ])", "\\2", regenyek[[i]])
  regenyek [[i]] <- gsub("([A-zzöüóőúéáű])(-)", "\\1", regenyek[[i]])
  regenyek [[i]] <- gsub("([[:punct:]])([A-zzöüóőúéáű])", "\\2", regenyek[[i]])
  regenyek [[i]] <- gsub("Dr. ", "Dr ", regenyek[[i]], ignore.case = TRUE)
  regenyek [[i]] <- gsub("stb. ", "stb ", regenyek[[i]])
  regenyek [[i]] <- gsub("Özv. ", "Özv ", regenyek[[i]], ignore.case = TRUE)
  regenyek [[i]] <- gsub("ifj. ", "ifj ", regenyek[[i]])
  regenyek [[i]] <- gsub("ún. ", "ún ", regenyek[[i]])
  regenyek [[i]] <- gsub("St. ", "st ", regenyek[[i]])
  regenyek [[i]] <- gsub("( [A-zzöüóőúéáű])(\\.)", "\\1", regenyek[[i]])
  regenyek [[i]] <- gsub("([.?!])( [a-zöüóőúéáű])", "\\2", regenyek[[i]])
  regenyek [[i]] <- gsub("([.?!])( [a-zöüóőúéáű])", "\\2", regenyek[[i]])
  regenyek [[i]] <- gsub("([.?!])([\\)] [a-zöüóőúéáű])", "\\2", regenyek[[i]])
  }


#tokenizer csomag - mondatokra, szavakra, beture szegentalas
library(tokenizers)
token_sent <- sapply(regenyek, tokenize_sentences)
token_sent2 <- list ()
for (i in 1:length(token_sent)) {
  token_sent2[[i]] <- unlist(token_sent[[i]], recursive = TRUE, use.names = TRUE)
}  
sentence_words <- sapply(token_sent2, tokenize_words)
# fejezet es fejezet-szam kivetele
sw <- list()
for (i in 1:length(sentence_words)) {
    sw[[i]] <- sentence_words[[i]][which(sentence_words[[i]] != "fejezet")]
    sw[[i]] <- sw[[i]][which(!grepl("^[0-9][0-9]", sw[[i]]))]
    sw[[i]] <- sw[[i]][which(!grepl("^[0-9]", sw[[i]]))]
}

sentence_letter <- list()
for (i in 1:length(sw)) {
  sentence_letter [[i]] <- sapply(token_sent2 [[i]], tokenize_characters)
  sentence_letter [[i]] <- sentence_letter [[i]][which(!grepl("^[0-9]", sentence_letter [[i]]))]
  }


#mondathossz, 0-k kiszedese
sentence_length <- list ()
for (i in 1:length(sw)) {
  sentence_length [[i]] <- sapply(sw[[i]], length)
  sentence_length [[i]] <- sentence_length[[i]][which(sentence_length[[i]] !=0)]
  }



#szavak szama
szavak_szama <- list()
for (i in 1:length(sentence_length)) {
  szavak_szama [[i]] <- sum (sentence_length[[i]])
}

#mondatok szama
mondatok_szama <- list ()
for (i in 1:length(sentence_length)){
  mondatok_szama[[i]] <- length(sentence_length[[i]])
}

#betuk szama
letter_length <- list ()
for (i in 1:length(sw)) {
  letter_length [[i]] <- sapply(sentence_letter[[i]], length)
  letter_length [[i]] <- letter_length[[i]][which(letter_length[[i]] !=0)]
}
betuk_szama <- list()
for (i in 1:length(sentence_letter)) {
  betuk_szama [[i]] <- sum (letter_length[[i]])
}




#alap metrikak
sentence_length_mean <- sapply(sentence_length, mean)
sentence_length_median <- sapply(sentence_length, median)
sentence_length_sd <-sapply(sentence_length, sd)

sentence_length_mean
sentence_length_sd
sentence_length_median

mean(sentence_length_mean)

#abrazolas
plot(metaadat$Év, metaadat$MeanSentenceLength, main = "Átlagos mondathossz, 1832-1968")
abline(h=15, col = "black")
abline(h=10, col = "black")


library(ggplot2)
ggplot(metaadat, aes(Év, MeanSentenceLength)) + 
  geom_point() + 
  geom_smooth(method = "loess", se= FALSE, colour = "blue")+ 
  ggtitle("Átlagos mondathosszúság, 1832-2005") + 
  theme(panel.grid.major = element_line(colour = "gray"))
  




