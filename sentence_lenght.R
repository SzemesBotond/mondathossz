#metaadat a magyar_regeny_100_jav2 tablazat elso 4 oszlopa, vagolaprol
#de kulon tablazatbol is betoltheto

metaadat <- read.table(file = "clipboard", 
                       sep = "\t", header=TRUE)

#korpusz betoltese - elotte regex kiszedi a romai szamokat es a "-jeleket
input.dir <- "YOUR DIR"
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
regenyek <- sapply(my.corpus.l, unlist,recursive = TRUE, use.names = TRUE)
regenyek <-  sapply(regenyek,function(x) gsub("([0-9]+)([A-zöüóőúéáűí])", "\\2",as.character(x)))
regenyek <-  sapply(regenyek,function(x) gsub("(– )([A-ZÖÜÓŐÚÉÁŰÍ])", "\\2",as.character(x)))
regenyek <-  sapply(regenyek,function(x) gsub("(- )([A-ZÖÜÓŐÚÉÁŰÍ])", "\\2",as.character(x)))
regenyek <-  sapply(regenyek,function(x) gsub("(\\.\\.\\.)( [A-ZÖÜÓŐÚÉÁŰÍ])", "\\.\\2",as.character(x)))
regenyek <-  sapply(regenyek,function(x) gsub("([A-zzöüóőúéáűí])(-)", "\\1",as.character(x)))
regenyek <-  sapply(regenyek,function(x) gsub("([[:punct:]])([A-zzöüóőúéáűí])", "\\2",as.character(x)))
regenyek <-  sapply(regenyek,function(x) gsub("Dr\\. ", "Dr ",as.character(x)))
regenyek <-  sapply(regenyek,function(x) gsub("stb\\. ", "stb ",as.character(x)))
regenyek <-  sapply(regenyek,function(x) gsub("Özv\\. ", "Özv ",as.character(x)))
regenyek <-  sapply(regenyek,function(x) gsub("ifj\\. ", "ifj ",as.character(x)))
regenyek <-  sapply(regenyek,function(x) gsub("ún\\. ", "ún ",as.character(x)))
regenyek <-  sapply(regenyek,function(x) gsub("St\\. ", "st ",as.character(x)))
regenyek <-  sapply(regenyek,function(x) gsub("( [A-zzöüóőúéáűí])(\\.)", "\\1", as.character(x)))
regenyek <-  sapply(regenyek,function(x) gsub("([.?!])( [a-zöüóőúéáűí])", "\\2", as.character(x)))
regenyek <-  sapply(regenyek,function(x) gsub("([.?!])( [a-zöüóőúéáűí])", "\\2", as.character(x)))
regenyek <-  sapply(regenyek,function(x) gsub("([.?!])([\\)] [a-zöüóőúéáűí])", "\\2", as.character(x)))

#tokenizer csomag - mondatokra, szavakra, beture szegentalas
library(tokenizers)
token_sent <- sapply(regenyek, tokenize_sentences)
token_sent2 <- list ()
token_sent2 <- sapply(token_sent, unlist, recursive = TRUE, use.names = TRUE)
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
szavak_szama <- lapply(sentence_length, sum)

#mondatok szama
mondatok_szama <- lapply(sentence_length, length)

#betuk szama
letter_length <- list ()
for (i in 1:length(sw)) {
  letter_length [[i]] <- sapply(sentence_letter[[i]], length)
  letter_length [[i]] <- letter_length[[i]][which(letter_length[[i]] !=0)]
}
betuk_szama  <- lapply(letter_length, sum)


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
  




