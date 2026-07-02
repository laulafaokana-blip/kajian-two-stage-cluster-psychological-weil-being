###############################################################
# ANALISIS PSYCHOLOGICAL WELL-BEING
# TWO-STAGE CLUSTER SAMPLING
###############################################################

#==============================================================
# 1. MEMANGGIL PACKAGE
#==============================================================

library(readxl)
library(dplyr)
library(psych)
library(survey)
library(sampling)
library(ggplot2)

#==============================================================
# 2. IMPORT DATA
#==============================================================

data <- read_excel("C:/Users/llaul/Downloads/data kuesioner (3).xlsx")

head(data)
str(data)
summary(data)

#==============================================================
# 3. DATA CLEANING
#==============================================================

# Mengecek Missing Value
colSums(is.na(data))

# Mengecek Data Duplikat
sum(duplicated(data))

#==============================================================
# 4. UJI VALIDITAS DAN RELIABILITAS
#==============================================================

# Rename kolom pertanyaan jadi Q1–Q10 agar lebih ringkas
colnames(data)[8:17] <- paste0("Q", 1:10)

item <- data[,c("Q1","Q2","Q3","Q4","Q5","Q6","Q7","Q8","Q9","Q10")]
item <- data.frame(lapply(item, function(x) as.numeric(as.character(x))))

# Uji validitas: item-total correlation
validitas <- psych::corr.test(item)
validitas$r # matriks korelasi item-total

# Uji reliabilitas: Cronbach's Alpha
hasil_alpha <- psych::alpha(item)
hasil_alpha
#==============================================================
# 5. SCORING SETIAP INDIKATOR
#==============================================================

data$SelfAcceptance       <- rowMeans(data[,c("Q1","Q2")])
data$PositiveRelations    <- rowMeans(data[,c("Q3","Q4")])
data$Autonomy             <- rowMeans(data[,c("Q5")])
data$EnvironmentalMastery <- rowMeans(data[,c("Q6","Q7")])
data$PurposeLife          <- rowMeans(data[,c("Q8","Q9")])
data$PersonalGrowth       <- rowMeans(data[,c("Q10")])
View(data[,c("Nama",
             "SelfAcceptance",
             "PositiveRelations",
             "Autonomy",
             "EnvironmentalMastery",
             "PurposeLife",
             "PersonalGrowth")])
#==============================================================
# 6. PEMBOBOTAN TWO-STAGE CLUSTER SAMPLING
#==============================================================

#==============================================================
# 6. PEMBOBOTAN TWO-STAGE CLUSTER SAMPLING
#==============================================================

# Tahap pertama
P1 <- 2/6
print(paste("Probabilitas Tahap 1 =", P1))

# Tahap kedua
P24A <- 19/26
P25B <- 21/31
print(paste("Probabilitas Tahap 2 (24A) =", P24A))
print(paste("Probabilitas Tahap 2 (25B) =", P25B))

# Bobot
data$weight <- ifelse(
  data$Kelas=="24A",
  1/(P1*P24A),
  1/(P1*P25B)
)

print(head(data[,c("Nama","Kelas","weight")]))
View(data[,c("Nama","Kelas","weight")])

#==============================================================
# 7. MEMBENTUK SURVEY DESIGN
#==============================================================

design <- svydesign(
  id=~Kelas,
  weights=~weight,
  data=data
)

#==============================================================
# 8. ESTIMASI SETIAP INDIKATOR
#==============================================================

estimasi <- svymean(
  ~SelfAcceptance+PositiveRelations+Autonomy+
    EnvironmentalMastery+PurposeLife+PersonalGrowth,
  design,
  deff=TRUE
)
estimasi

#==============================================================
# 9. STANDARD ERROR
#==============================================================

SE(estimasi)

#==============================================================
# 10. CONFIDENCE INTERVAL
#==============================================================

confint(estimasi)

#==============================================================
# 11. DESIGN EFFECT
#==============================================================

deff(estimasi)

#==============================================================
# 12. RELATIVE STANDARD ERROR
#==============================================================

RSE <- SE(estimasi)/coef(estimasi)*100
RSE

#==============================================================
# 13. HASIL ESTIMASI
#==============================================================

hasil <- data.frame(
  Mean    = coef(estimasi),
  SE      = SE(estimasi),
  LowerCI = confint(estimasi)[,1],
  UpperCI = confint(estimasi)[,2],
  RSE     = RSE
)

# Simpan rownames sebagai kolom indikator
hasil$Indikator <- rownames(hasil)

write.csv(hasil, "Hasil_Estimasi.csv", row.names=FALSE)

#==============================================================
# 14. VISUALISASI
#==============================================================

ggplot(hasil, aes(x=Indikator, y=Mean)) +
  geom_bar(stat="identity", fill="steelblue") +
  geom_errorbar(aes(ymin=LowerCI, ymax=UpperCI), width=0.2, color="black") +
  labs(
    title="Estimasi Psychological Well-Being",
    x="Indikator",
    y="Rata-rata"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle=45, hjust=1))
