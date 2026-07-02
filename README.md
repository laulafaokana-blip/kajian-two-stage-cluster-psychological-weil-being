## Kajian Tingkat Psychological Well-Being Mahasiswa Program Studi Statistika Universitas Mataram dengan Teknik Two-Stage Cluster Sampling

# Struktur Repository
Kajian-PWB-TwoStageCluster/
│
├── README.md
├── data/
├── questionnaire/
├── script/
├── output/
├── docs/
└── laporan/

# Latar Belakang
Psychological Well-Being merupakan salah satu aspek penting dalam kehidupan mahasiswa karena berhubungan dengan kemampuan individu dalam menerima diri, membangun hubungan sosial yang baik, mengelola lingkungan, mengambil keputusan secara mandiri, memiliki tujuan hidup, serta terus mengembangkan potensi diri. Mahasiswa Program Studi Statistika memiliki karakteristik pembelajaran yang menuntut kemampuan analitis, pemecahan masalah, serta penyelesaian tugas akademik yang cukup tinggi. Kondisi tersebut dapat memengaruhi kesejahteraan psikologis mahasiswa apabila tidak diimbangi dengan kemampuan adaptasi yang baik.

Kajian mengenai Psychological Well-Being penting dilakukan karena tingkat kesejahteraan psikologis mahasiswa tidak hanya dapat dilihat secara keseluruhan, tetapi juga perlu diketahui pada setiap dimensi Psychological Well-Being. Dengan mengetahui kondisi masing-masing indikator, program studi dapat mengidentifikasi aspek yang sudah baik maupun aspek yang masih memerlukan perhatian sehingga dapat menjadi dasar dalam penyusunan program pembinaan dan pendampingan mahasiswa.

Penelitian ini menggunakan teknik Two-Stage Cluster Sampling karena populasi mahasiswa terbagi dalam beberapa kelas sehingga pengambilan sampel dilakukan secara bertahap melalui pemilihan kelas sebagai cluster, kemudian pemilihan mahasiswa pada cluster yang terpilih. Teknik ini memungkinkan pengambilan sampel menjadi lebih efisien sekaligus tetap mampu menghasilkan estimasi yang mewakili populasi apabila dilakukan pembobotan (sampling weight).

Analisis dilakukan menggunakan RStudio dengan menghitung estimasi rata-rata pada setiap indikator Psychological Well-Being beserta ukuran ketelitian estimasinya, sehingga hasil penelitian tidak hanya menunjukkan tingkat Psychological Well-Being secara umum, tetapi juga memberikan gambaran rinci mengenai kondisi masing-masing indikator.
# METODE PENELITIAN
## 3.1 Jenis Penelitian

Penelitian ini merupakan penelitian kuantitatif dengan pendekatan survei yang bertujuan untuk mengkaji tingkat Psychological Well-Being mahasiswa Program Studi Statistika Universitas Mataram. Analisis dilakukan menggunakan teknik Two-Stage Cluster Sampling, yaitu metode pengambilan sampel dua tahap yang terdiri atas pemilihan cluster (kelas) dan pemilihan responden pada cluster terpilih. Selanjutnya dilakukan proses estimasi menggunakan pembobotan (sampling weight) sehingga hasil analisis dapat mewakili kondisi populasi.
## 3.2 Lokasi dan Waktu Penelitian

Penelitian dilaksanakan di Program Studi Statistika Universitas Mataram. Pengumpulan data dilakukan melalui penyebaran kuesioner kepada mahasiswa pada kelas yang terpilih sebagai sampel penelitian.
## 3.3 Populasi dan Sampel

Populasi penelitian adalah seluruh mahasiswa aktif Program Studi Statistika Universitas Mataram yang terdiri atas enam kelas, yaitu 23A, 23B, 24A, 24B, 25A, dan 25B.

Teknik pengambilan sampel menggunakan Two-Stage Cluster Sampling. Pada tahap pertama dilakukan pemilihan cluster secara acak dan diperoleh kelas 24A dan 25B sebagai cluster terpilih. Kelas 24A memiliki jumlah mahasiswa sebanyak 26 orang, sedangkan kelas 25B berjumlah 31 orang. Dari kedua kelas tersebut diperoleh sebanyak 40 responden yang digunakan sebagai sampel penelitian.
## 3.4 Teknik Pengumpulan Data

Data yang digunakan merupakan data primer yang diperoleh melalui penyebaran kuesioner menggunakan skala Likert lima tingkat, yaitu Sangat Tidak Setuju (1) hingga Sangat Setuju (5). Instrumen penelitian terdiri atas sepuluh butir pertanyaan yang mewakili enam dimensi Psychological Well-Being, yaitu Self Acceptance, Positive Relations with Others, Autonomy, Environmental Mastery, Purpose in Life, dan Personal Growth.
## 3.5 Teknik Analisis Data

Analisis data dilakukan menggunakan perangkat lunak RStudio. Tahapan analisis meliputi proses import data, pembersihan data, pengujian kualitas instrumen, pembentukan skor indikator, pembobotan sesuai desain Two-Stage Cluster Sampling, perhitungan estimasi, serta interpretasi hasil. Adapun tahapan analisis dijelaskan sebagai berikut.

### 3.5.1 Import Data

Tahap pertama adalah mengimpor data hasil kuesioner ke dalam RStudio. Tujuan dari tahap ini adalah membaca data dari file Microsoft Excel sehingga dapat diproses lebih lanjut menggunakan bahasa pemrograman R. Selain itu dilakukan pemeriksaan struktur data untuk memastikan seluruh variabel telah terbaca dengan benar.

```r
library(readxl)
library(dplyr)

data <- read_excel("data_kuesioner.xlsx")

head(data)
str(data)
summary(data)
```
Fungsi Syntax:

-library(readxl) digunakan untuk membaca file Excel.

-library(dplyr) digunakan untuk manipulasi data.

-read_excel() digunakan untuk mengimpor data ke RStudio.

-head() menampilkan beberapa baris pertama data.

-str() menampilkan struktur data.

-summary() memberikan ringkasan statistik setiap variabel.

### 3.5.2 Data Cleaning

Setelah data berhasil diimpor, dilakukan proses data cleaning. Tahapan ini bertujuan untuk memastikan kualitas data sebelum dilakukan analisis. Pemeriksaan meliputi data yang hilang (missing value), data ganda (duplicate), serta kesesuaian tipe data dan skala pengukuran.
```r
colSums(is.na(data))

sum(duplicated(data))

summary(data)
```
Fungsi Syntax

-is.na() digunakan untuk mendeteksi data yang kosong.

-colSums() menghitung jumlah missing value pada setiap variabel.

-duplicated() digunakan untuk mendeteksi data yang sama.

-summary() digunakan untuk memeriksa kembali distribusi data.

### 3.5.3 Uji Validitas dan Reliabilitas

Tahap berikutnya adalah menguji kualitas instrumen penelitian. Uji validitas dilakukan menggunakan Corrected Item Total Correlation, sedangkan uji reliabilitas menggunakan Cronbach's Alpha. Pengujian ini bertujuan memastikan bahwa butir pertanyaan mampu mengukur konstruk Psychological Well-Being secara valid dan konsisten.
```r
library(psych)

item <- data[,c("Q1","Q2","Q3","Q4","Q5",
                "Q6","Q7","Q8","Q9","Q10")]

hasil_alpha <- alpha(item)

hasil_alpha
```
Fungsi Syntax:

-library(psych) memanggil package untuk analisis psikometri.

-item <- data[...] memilih kolom yang berisi butir pertanyaan.

alpha() menghitung nilai Cronbach's Alpha sekaligus informasi validitas item.

### 3.5.4 Pembentukan Skor Indikator

Skor setiap indikator dihitung dengan mengambil rata-rata skor butir pertanyaan yang mewakili masing-masing dimensi Psychological Well-Being. Tahap ini menghasilkan enam variabel baru yang akan digunakan pada proses estimasi.
```r
data$SelfAcceptance <- rowMeans(data[,c("Q1","Q2")])

data$PositiveRelations <- rowMeans(data[,c("Q3","Q4")])

data$Autonomy <- data$Q5

data$EnvironmentalMastery <- rowMeans(data[,c("Q6","Q7")])

data$PurposeLife <- rowMeans(data[,c("Q8","Q9")])

data$PersonalGrowth <- data$Q10
```
Fungsi Syntax:
-rowMeans() menghitung rata-rata skor tiap indikator.

-data$... membuat variabel indikator baru berdasarkan hasil perhitungan.

### 3.5.5 Pembobotan Two-Stage Cluster Sampling

Karena penelitian menggunakan teknik Two-Stage Cluster Sampling, setiap responden memiliki peluang terpilih yang berbeda sehingga perlu dihitung bobot sampling. Bobot diperoleh dari kebalikan peluang pemilihan pada tahap pertama dan tahap kedua.
```r
P1 <- 2/6

P24A <- 20/26

P25B <- 20/31

data$weight <- ifelse(
  data$Kelas=="24A",
  1/(P1*P24A),
  1/(P1*P25B)
)
```
Fungsi Syntax:
-P1 menghitung peluang pemilihan cluster.

-P24A dan P25B menghitung peluang pemilihan responden.

-ifelse() memberikan bobot sesuai kelas responden.

### 3.5.6 Pembentukan Desain Survei

Setelah bobot dihitung, dibentuk desain survei menggunakan package survey. Desain ini menjadi dasar dalam proses estimasi sehingga perhitungan memperhitungkan bobot responden.
```r
library(survey)

design <- svydesign(
  id = ~Kelas,
  weights = ~weight,
  data = data
)
```
Fungsi Syntax:
-svydesign() membentuk objek desain survei.

-id menunjukkan cluster.

-weights menunjukkan bobot sampling.

### 3.5.7 Estimasi Parameter

Tahap estimasi dilakukan untuk menghitung nilai rata-rata (Weighted Mean) setiap indikator Psychological Well-Being beserta ukuran ketelitiannya, yaitu Standard Error (SE), Confidence Interval (CI), Design Effect (Deff), dan Relative Standard Error (RSE).
```r
hasil <- svymean(
  ~SelfAcceptance +
   PositiveRelations +
   Autonomy +
   EnvironmentalMastery +
   PurposeLife +
   PersonalGrowth,
  design,
  deff = TRUE
)

hasil

SE(hasil)

confint(hasil)

RSE <- SE(hasil)/coef(hasil)*100
RSE
```
Fungsi Syntax:
-svymean() menghitung estimasi rata-rata berbobot.

-SE() menghitung Standard Error.

-confint() menghasilkan Confidence Interval 95%.

-coef() mengambil nilai estimasi rata-rata.

-RSE menghitung Relative Standard Error sebagai ukuran ketelitian estimasi.

### 3.5.8 Visualisasi Hasil

Tahap terakhir adalah menyajikan hasil estimasi dalam bentuk grafik sehingga memudahkan interpretasi dan perbandingan antarindikator.
```r
ggplot(hasil_df,
       aes(x = Indikator,
           y = Mean)) +
  geom_col() +
  theme_minimal()
```
Fungsi Syntax:

-ggplot() digunakan untuk membuat visualisasi data.

-geom_col() menampilkan diagram batang.

-theme_minimal() memberikan tampilan grafik yang lebih sederhana dan mudah dibaca.

# HASIL DAN PEMBAHASAN
## Gambaran Umum Penelitian
Penelitian ini bertujuan untuk mengkaji tingkat Psychological Well-Being mahasiswa Program Studi Statistika Universitas Mataram menggunakan teknik Two-Stage Cluster Sampling. Teknik sampling ini dipilih agar sampel yang diperoleh mampu mewakili populasi secara lebih efisien melalui proses pemilihan sampel dalam dua tahap.

Pada tahap pertama dilakukan pemilihan cluster, yaitu kelas mahasiswa aktif Program Studi Statistika Universitas Mataram. Dari enam kelas yang tersedia, diperoleh dua kelas terpilih melalui proses pengacakan, yaitu kelas 24A dan kelas 25B. Selanjutnya pada tahap kedua dilakukan pemilihan responden pada masing-masing kelas sehingga diperoleh 40 mahasiswa sebagai sampel penelitian.

Pengumpulan data dilakukan menggunakan kuesioner dengan skala Likert lima tingkat yang terdiri atas sepuluh butir pertanyaan. Kesepuluh butir tersebut mewakili enam dimensi Psychological Well-Being menurut Ryff, yaitu Self Acceptance, Positive Relations with Others, Autonomy, Environmental Mastery, Purpose in Life, dan Personal Growth. Seluruh proses pengolahan data dilakukan menggunakan perangkat lunak RStudio, mulai dari proses import data, data cleaning, uji instrumen, pembentukan skor indikator, pembobotan, hingga estimasi parameter populasi.
## 4.2 Pengolahan Data
### Import Data
Tahap pertama adalah mengimpor data hasil kuesioner ke dalam RStudio menggunakan package readxl. Berdasarkan hasil import, dataset berhasil dibaca dengan baik dan terdiri atas 40 responden dengan 17 variabel, yaitu tujuh variabel identitas responden dan sepuluh variabel pertanyaan mengenai Psychological Well-Being.
Tabel Preview Dataset
| Nama                | Kelas |  JK |  Q1 |  Q2 |  Q3 |
| ------------------- | :---: | :-: | :-: | :-: | :-: |
| Amelia Dewi Sartika |  24A  |  P  |  4  |  3  |  4  |
| Era Fazira          |  24A  |  P  |  3  |  4  |  4  |
| Vena Asmarinda      |  24A  |  P  |  3  |  5  |  5  |
| Baiq Nayla W.       |  24A  |  P  |  5  |  4  |  5  |
| Ni Putu Adelina     |  24A  |  P  |  3  |  3  |  3  |
| ...                 |  ...  | ... | ... | ... | ... |
| Aura Alifa Nabila   |  24A  |  P  |  5  |  4  |  4  |
| Tika Aulia          |  24A  |  P  |  3  |  3  |  3  |

Interpretasi: 
Hasil import menunjukkan bahwa seluruh data berhasil dibaca oleh RStudio tanpa mengalami kesalahan struktur maupun tipe data. Variabel identitas dikenali sebagai data karakter, sedangkan seluruh item pertanyaan telah dikenali sebagai data numerik sehingga dapat langsung digunakan pada proses analisis statistik. Dataset yang telah berhasil diimpor menjadi dasar dalam seluruh tahapan penelitian, mulai dari pemeriksaan kualitas data hingga proses estimasi menggunakan teknik Two-Stage Cluster Sampling.

### 4.2.2 Data Cleaning
Tahap data cleaning dilakukan untuk memastikan bahwa dataset telah memenuhi syarat untuk dianalisis lebih lanjut. Pemeriksaan dilakukan terhadap keberadaan missing value dan data duplikat.

 Tabel Missing Value:
| Pemeriksaan   | Hasil |
| ------------- | :---: |
| Missing Value | **0** |

Interpretasi:
Berdasarkan hasil pemeriksaan menggunakan fungsi colSums(is.na(data)), tidak ditemukan data yang hilang pada seluruh variabel penelitian. Hal ini menunjukkan bahwa seluruh responden telah mengisi setiap butir pertanyaan secara lengkap sehingga tidak diperlukan proses imputasi maupun penghapusan data. Dengan demikian, seluruh responden dapat dipertahankan dalam proses analisis sehingga informasi yang diperoleh tetap utuh dan representatif.

Tabel Hsil Data Duplikat:
| Pemeriksaan   | Hasil |
| ------------- | :---: |
| Data Duplikat | **0** |

Interpretasi:
Hasil pemeriksaan menggunakan fungsi duplicated() menunjukkan bahwa tidak terdapat data yang tercatat lebih dari satu kali. Seluruh observasi merupakan data unik sehingga setiap responden hanya memberikan satu jawaban terhadap kuesioner penelitian. Kondisi ini menunjukkan bahwa proses pengumpulan data telah berlangsung dengan baik dan tidak menimbulkan bias akibat pengulangan data.

4.2.3 Uji Validitas
Uji validitas dilakukan untuk memastikan bahwa setiap butir pertanyaan dalam instrumen benar-benar mampu mengukur konstruk Psychological Well-Being yang dimaksud. Pengujian dilakukan menggunakan Corrected Item-Total Correlation (r.drop) melalui package psych pada RStudio. Nilai r.drop menunjukkan sejauh mana setiap item berkorelasi dengan skor total, sehingga menjadi indikator apakah item tersebut relevan dan konsisten dengan keseluruhan konstruk

tabel Ringkasan Hasil Uji Validitas:
| Item | r.drop | Validitas |
| --- | --- | --- |
| Q1 | 0.45 | Valid |
| Q2 | 0.63 | Valid |
| Q3 | 0.54 | Valid |
| Q4 | 0.69 | Valid |
| Q5 | 0.70 | Valid |
| Q6 | 0.66 | Valid |
| Q7 | 0.44 | Valid |
| Q8 | 0.76 | Valid |
| Q9 | 0.62 | Valid |
| Q10 | 0.73 | Valid |

Interpretasi:
Hasil pengujian menunjukkan bahwa seluruh butir pertanyaan memiliki nilai r.drop ≥ 0.30, sehingga dapat dinyatakan valid. Hal ini berarti setiap item memiliki kontribusi yang signifikan terhadap pengukuran konstruk Psychological Well-Being. Nilai validitas tertinggi diperoleh pada Q8 (0.76), yang menunjukkan bahwa item ini paling kuat dalam merepresentasikan konstruk yang diukur. Sebaliknya, nilai terendah terdapat pada Q7 (0.44), namun tetap berada di atas ambang batas sehingga masih dianggap valid. Secara keseluruhan, arah korelasi yang positif pada semua item menegaskan bahwa setiap pertanyaan bergerak sejalan dengan konstruk utama. Artinya, semakin tinggi skor responden pada suatu item, semakin tinggi pula kecenderungan skor total Psychological Well-Being. Konsistensi ini menunjukkan bahwa instrumen tidak hanya memiliki validitas internal yang baik, tetapi juga mampu menjaga kesesuaian antarbutir dalam mengukur aspek-aspek psikologis yang relevan.

### 4.2.4 Uji Reliabilitas

Pengujian reliabilitas dilakukan menggunakan metode Cronbach's Alpha untuk mengetahui tingkat konsistensi instrumen penelitian.

Tabel Hasil Uji Reliabilitas:
| Statistik        |           Nilai |
| ---------------- | --------------: |
| Jumlah Responden |              40 |
| Jumlah Item      |              10 |
| Cronbach's Alpha |        **0.88** |
| Kategori         | Sangat Reliabel |

Interpretasi:
Berdasarkan hasil analisis menggunakan fungsi alpha() pada package psych, diperoleh nilai Cronbach's Alpha sebesar 0,88. Nilai tersebut berada di atas batas minimum 0,70 sehingga instrumen dinyatakan memiliki tingkat reliabilitas yang sangat baik. Hal ini menunjukkan bahwa seluruh butir pertanyaan memiliki konsistensi internal yang tinggi dalam mengukur tingkat Psychological Well-Being. Selain itu, nilai Alpha if Item Deleted pada setiap butir tidak menunjukkan peningkatan yang berarti apabila salah satu item dihapus, sehingga seluruh item tetap dipertahankan pada proses analisis selanjutnya.

