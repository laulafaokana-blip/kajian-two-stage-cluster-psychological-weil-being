# Kajian Tingkat Psychological Well-Being Mahasiswa Program Studi Statistika Universitas Mataram dengan Teknik Two-Stage Cluster Sampling

# DAFTAR ISI
1. Pendahuluan
   - Latar Belakang
   - Rumusan Masalah
   - Tujuan Penelitian
   - Ruang Lingkup Penelitian

2. Metode Penelitian
   - Desain Penelitian
   - Populasi dan Sampel
   - Teknik Two-Stage Cluster Sampling
   - Variabel Penelitian
   - Instrumen Penelitian
   - Tahapan Pengolahan Data
   - Syntax RStudio

3. Hasil dan Pembahasan
   - Karakteristik Responden
   - Import Data
   - Data Cleaning
   - Uji Validitas
   - Uji Reliabilitas
   - Pembentukan Skor Indikator
   - Pembobotan Two-Stage Cluster Sampling
   - Survey Design
   - Hasil Estimasi
   - Perhitungan Indeks Psychological Well-Being
   - Visualisasi

4. Hasil Analisis
   - Analisis Self Acceptance
   - Analisis Positive Relations with Others
   - Analisis Autonomy
   - Analisis Environmental Mastery
   - Analisis Purpose in Life
   - Analisis Personal Growth
   - Perbandingan Antar Indikator
   - Pembahasan Berdasarkan Teori Ryff

5. Penutup
   - Kesimpulan
   - Saran

# BAB I PENDAHULUAN
## 1.1 Latar Belakang

Kesejahteraan psikologis (Psychological Well-Being) merupakan salah satu aspek penting dalam mendukung keberhasilan mahasiswa selama menjalani proses perkuliahan. Mahasiswa tidak hanya dituntut untuk mencapai prestasi akademik yang baik, tetapi juga harus mampu menjaga kondisi psikologis agar tetap sehat dalam menghadapi berbagai tuntutan akademik maupun nonakademik. Kondisi psychological well-being yang baik akan membantu mahasiswa dalam mengembangkan potensi diri, membangun hubungan sosial yang positif, memiliki tujuan hidup yang jelas, serta mampu menghadapi berbagai tantangan selama masa studi.

Program Studi Statistika Universitas Mataram memiliki karakteristik pembelajaran yang menuntut kemampuan analisis, pemecahan masalah, dan penguasaan perangkat lunak statistik. Tugas perkuliahan, praktikum, penelitian, serta penyusunan laporan menjadi tantangan yang dapat memengaruhi kondisi psikologis mahasiswa. Oleh karena itu, penting untuk mengetahui bagaimana tingkat Psychological Well-Being mahasiswa sebagai salah satu indikator yang mendukung keberhasilan proses pembelajaran.

Konsep Psychological Well-Being yang digunakan dalam penelitian ini mengacu pada teori Ryff yang terdiri atas enam dimensi, yaitu Self Acceptance, Positive Relations with Others, Autonomy, Environmental Mastery, Purpose in Life, dan Personal Growth. Keenam dimensi tersebut menggambarkan kesejahteraan psikologis seseorang secara menyeluruh, sehingga hasil penelitian tidak hanya menunjukkan kondisi psikologis secara umum, tetapi juga memberikan informasi mengenai aspek mana yang telah berkembang dengan baik maupun yang masih perlu ditingkatkan.

Penelitian ini menggunakan teknik Two-Stage Cluster Sampling sebagai metode pengambilan sampel. Populasi penelitian terdiri atas mahasiswa angkatan 2023, 2024, dan 2025 yang terbagi ke dalam enam kelas, yaitu 23A, 23B, 24A, 24B, 25A, dan 25B. Pada tahap pertama dilakukan pemilihan dua cluster secara acak sehingga diperoleh kelas 24A dan kelas 25B sebagai cluster terpilih. Selanjutnya, pada tahap kedua dipilih responden dari masing-masing cluster sehingga diperoleh 40 mahasiswa, yang terdiri atas 19 mahasiswa kelas 24A dan 21 mahasiswa kelas 25B.

Berbeda dengan penelitian deskriptif yang hanya menyajikan rata-rata sampel, penelitian ini menerapkan pendekatan estimasi statistik sehingga hasil penelitian diharapkan mampu mewakili populasi. Proses estimasi dilakukan dengan menghitung bobot sampling berdasarkan peluang pemilihan setiap responden pada desain Two-Stage Cluster Sampling. Selanjutnya dihitung ukuran ketelitian estimasi berupa Weighted Mean, Standard Error (SE), Confidence Interval (95%), Design Effect (Deff), dan Relative Standard Error (RSE) untuk mengevaluasi kualitas hasil estimasi.

Seluruh proses analisis dilakukan menggunakan perangkat lunak RStudio, dimulai dari proses import data, data cleaning, uji validitas, uji reliabilitas, pembentukan skor setiap indikator, pembobotan sampel, pembentukan survey design, proses estimasi, hingga visualisasi hasil. Dengan demikian, penelitian ini tidak hanya memberikan gambaran mengenai tingkat Psychological Well-Being mahasiswa Program Studi Statistika Universitas Mataram, tetapi juga menghasilkan estimasi yang memiliki dasar statistik yang kuat dan dapat dipertanggungjawabkan.

## 1.2 Rumusan Masalah
Bagaimana tingkat Psychological Well-Being mahasiswa Program Studi Statistika Universitas Mataram pada setiap dimensi Ryff?
Bagaimana hasil estimasi setiap indikator menggunakan teknik Two-Stage Cluster Sampling?
Bagaimana tingkat ketelitian hasil estimasi berdasarkan nilai Standard Error (SE), Confidence Interval (95%), Design Effect (Deff), dan Relative Standard Error (RSE)?
## 1.3 Tujuan Penelitian

Penelitian ini bertujuan untuk:

Mengkaji tingkat Psychological Well-Being mahasiswa Program Studi Statistika Universitas Mataram.
Mengestimasi rata-rata setiap indikator menggunakan teknik Two-Stage Cluster Sampling.
Mengukur ketelitian hasil estimasi melalui nilai SE, Confidence Interval, Deff, dan RSE.
Menyajikan proses analisis secara reproducible menggunakan RStudio.
## 1.4 Manfaat Penelitian

Penelitian ini diharapkan dapat memberikan manfaat sebagai berikut.

Bagi Program Studi Statistika Universitas Mataram, hasil penelitian dapat menjadi bahan evaluasi dalam memahami kondisi psychological well-being mahasiswa sehingga dapat digunakan sebagai dasar penyusunan program pembinaan akademik maupun nonakademik.
Bagi mahasiswa, penelitian ini memberikan gambaran mengenai kondisi psychological well-being berdasarkan enam dimensi Ryff sehingga dapat menjadi bahan refleksi untuk meningkatkan kesejahteraan psikologis.
Bagi peneliti selanjutnya, penelitian ini dapat dijadikan referensi dalam penerapan teknik Two-Stage Cluster Sampling untuk kajian kesejahteraan psikologis maupun penelitian survei lainnya.

# BAB II METODE PENELITIAN
## 2.1 Jenis Penelitian

Penelitian ini merupakan penelitian kuantitatif dengan pendekatan survei yang bertujuan untuk mengkaji tingkat Psychological Well-Being mahasiswa Program Studi Statistika Universitas Mataram. Analisis dilakukan menggunakan teknik Two-Stage Cluster Sampling, yaitu metode pengambilan sampel dua tahap yang terdiri atas pemilihan cluster (kelas) dan pemilihan responden pada cluster terpilih. Selanjutnya dilakukan proses estimasi menggunakan pembobotan (sampling weight) sehingga hasil analisis dapat mewakili kondisi populasi.
## 2.2 Lokasi dan Waktu Penelitian

Penelitian dilaksanakan di Program Studi Statistika Universitas Mataram. Pengumpulan data dilakukan melalui penyebaran kuesioner kepada mahasiswa pada kelas yang terpilih sebagai sampel penelitian.
## 2.3 Populasi dan Sampel

Populasi penelitian adalah seluruh mahasiswa aktif Program Studi Statistika Universitas Mataram yang terdiri atas enam kelas, yaitu 23A, 23B, 24A, 24B, 25A, dan 25B.

Teknik pengambilan sampel menggunakan Two-Stage Cluster Sampling. Pada tahap pertama dilakukan pemilihan cluster secara acak dan diperoleh kelas 24A dan 25B sebagai cluster terpilih. Kelas 24A memiliki jumlah mahasiswa sebanyak 26 orang, sedangkan kelas 25B berjumlah 31 orang. Dari kedua kelas tersebut diperoleh sebanyak 40 responden yang digunakan sebagai sampel penelitian.
## 2.4 Teknik Pengumpulan Data

Data yang digunakan merupakan data primer yang diperoleh melalui penyebaran kuesioner menggunakan skala Likert lima tingkat, yaitu Sangat Tidak Setuju (1) hingga Sangat Setuju (5). Instrumen penelitian terdiri atas sepuluh butir pertanyaan yang mewakili enam dimensi Psychological Well-Being, yaitu Self Acceptance, Positive Relations with Others, Autonomy, Environmental Mastery, Purpose in Life, dan Personal Growth.
## 2.5 Teknik Analisis Data

Analisis data dilakukan menggunakan perangkat lunak RStudio. Tahapan analisis meliputi proses import data, pembersihan data, pengujian kualitas instrumen, pembentukan skor indikator, pembobotan sesuai desain Two-Stage Cluster Sampling, perhitungan estimasi, serta interpretasi hasil. Adapun tahapan analisis dijelaskan sebagai berikut.

### 2.5.1 Import Data

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

### 2.5.2 Data Cleaning

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

### 2.5.3 Uji Validitas dan Reliabilitas

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

### 2.5.4 Pembentukan Skor Indikator

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

### 2.5.5 Pembobotan Two-Stage Cluster Sampling

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

### 2.5.6 Pembentukan Desain Survei

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

### 2.5.7 Estimasi Parameter

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

### 2.5.8 Visualisasi Hasil

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

# BAB III HASIL DAN PEMBAHASAN
## 3.1 Gambaran Umum Penelitian
Penelitian ini bertujuan untuk mengkaji tingkat Psychological Well-Being mahasiswa Program Studi Statistika Universitas Mataram menggunakan teknik Two-Stage Cluster Sampling. Teknik sampling ini dipilih agar sampel yang diperoleh mampu mewakili populasi secara lebih efisien melalui proses pemilihan sampel dalam dua tahap.

Pada tahap pertama dilakukan pemilihan cluster, yaitu kelas mahasiswa aktif Program Studi Statistika Universitas Mataram. Dari enam kelas yang tersedia, diperoleh dua kelas terpilih melalui proses pengacakan, yaitu kelas 24A dan kelas 25B. Selanjutnya pada tahap kedua dilakukan pemilihan responden pada masing-masing kelas sehingga diperoleh 40 mahasiswa sebagai sampel penelitian.

Pengumpulan data dilakukan menggunakan kuesioner dengan skala Likert lima tingkat yang terdiri atas sepuluh butir pertanyaan. Kesepuluh butir tersebut mewakili enam dimensi Psychological Well-Being menurut Ryff, yaitu Self Acceptance, Positive Relations with Others, Autonomy, Environmental Mastery, Purpose in Life, dan Personal Growth. Seluruh proses pengolahan data dilakukan menggunakan perangkat lunak RStudio, mulai dari proses import data, data cleaning, uji instrumen, pembentukan skor indikator, pembobotan, hingga estimasi parameter populasi.
## 3.2 Pengolahan Data
### 3.2.1 Import Data
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

### 3.2.2 Data Cleaning
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

## 3.2.3 Uji Validitas
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

### 3.2.4 Uji Reliabilitas

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

### 3.2.5 Pembentukan Skor Indikator

Skor setiap indikator dibentuk menggunakan fungsi rowMeans() berdasarkan butir pertanyaan yang mewakili masing-masing dimensi Psychological Well-Being.

Tabel Pembentukan Skor:
| Indikator             | Item   | Rumus         |
| --------------------- | ------ | ------------- |
| Self Acceptance       | Q1, Q2 | (Q1 + Q2) / 2 |
| Positive Relations    | Q3, Q4 | (Q3 + Q4) / 2 |
| Autonomy              | Q5     | Q5            |
| Environmental Mastery | Q6, Q7 | (Q6 + Q7) / 2 |
| Purpose in Life       | Q8, Q9 | (Q8 + Q9) / 2 |
| Personal Growth       | Q10    | Q10           |

Tabel Hasil Scoring:
| Nama                |  SA |  PR |  AU |  EM |  PL |  PG |
| ------------------- | :-: | :-: | :-: | :-: | :-: | :-: |
| Amelia Dewi Sartika | 3.5 | 4.0 | 3.0 | 4.0 | 3.5 | 4.0 |
| Era Fazira          | 3.5 | 4.0 | 3.0 | 4.0 | 4.5 | 4.0 |
| Vena Asmarinda      | 4.0 | 4.5 | 3.0 | 3.0 | 4.5 | 5.0 |
| Baiq Nayla W.       | 4.5 | 5.0 | 5.0 | 3.5 | 4.0 | 4.0 |
| Ni Putu Adelina     | 3.0 | 3.5 | 4.0 | 3.0 | 3.5 | 4.0 |
| ...                 | ... | ... | ... | ... | ... | ... |
| Zahra               | 4.5 | 4.0 | 4.0 | 4.5 | 4.5 | 5.0 |
| Tika Aulia          | 3.0 | 3.0 | 2.0 | 3.0 | 3.0 | 3.0 |

Interpretasi:
Berdasarkan proses pembentukan skor, diperoleh enam variabel baru yang mewakili dimensi Psychological Well-Being berdasarkan teori Ryff, yaitu Self Acceptance, Positive Relations with Others, Autonomy, Environmental Mastery, Purpose in Life, dan Personal Growth. Keenam indikator tersebut dihitung dari skor rata-rata butir pertanyaan yang mewakilinya sehingga menghasilkan nilai pada rentang 1–5. Skor masing-masing indikator selanjutnya digunakan sebagai dasar dalam proses pembobotan dan estimasi menggunakan teknik Two-Stage Cluster Sampling.

### 3.2.6 Pembobotan Two-Stage Cluster Sampling
Pada penelitian ini, teknik pengambilan sampel menggunakan Two-Stage Cluster Sampling. Oleh karena itu, sebelum melakukan estimasi parameter populasi, setiap responden harus diberikan bobot sampling (sampling weight). Pembobotan bertujuan agar setiap responden dapat mewakili jumlah anggota populasi sesuai dengan peluang terpilihnya pada proses pengambilan sampel.
Pembobotan dilakukan melalui dua tahap, yaitu pemilihan cluster (kelas) pada tahap pertama dan pemilihan mahasiswa pada setiap kelas terpilih pada tahap kedua.
#### Tahap 1. Peluang Pemilihan Cluster
ada tahap pertama terdapat 6 kelas sebagai populasi cluster, sedangkan yang terpilih sebanyak 2 kelas, yaitu kelas 24A dan 25B.

Rumus peluang pemilihan cluster adalah

P1 = N/n
dengan
n=2 kelas terpilih
N=6 jumlah seluruh kelas
Sehingga
P1 = 6/2 =0.3333

#### Tahap 2. Peluang Pemilihan Responden
Pada tahap kedua dilakukan pemilihan mahasiswa dari masing-masing kelas.

Untuk kelas 24A

P24A = 26/19 =0.7308

Untuk kelas 25B
P25B = 31/21 =0.6774
#### Bobot Sampling

Bobot dihitung menggunakan rumus
wi = 1/P1×P2
Sehingga Diperoleh
| Kelas | Peluang Tahap 1 | Peluang Tahap 2 | Bobot |
| :---- | --------------: | --------------: | ----: |
| 24A   |          0.3333 |          0.7308 |  4.10 |
| 25B   |          0.3333 |          0.6774 |  4.43 |

Interpretasi:
Hasil pembobotan menunjukkan bahwa responden pada kelas 24A memiliki bobot sebesar 4,10, sedangkan responden pada kelas 25B memiliki bobot sebesar 4,43. Perbedaan bobot tersebut disebabkan oleh perbedaan peluang pemilihan responden pada masing-masing kelas. Bobot ini selanjutnya digunakan dalam seluruh proses estimasi sehingga hasil yang diperoleh mampu merepresentasikan populasi mahasiswa Program Studi Statistika Universitas Mataram secara lebih akurat. 

### 3.2.7 Pembentukan Survey Design
Setelah bobot sampling diperoleh, langkah berikutnya adalah membentuk objek survey design menggunakan package survey pada RStudio. Tahap ini bertujuan agar seluruh proses estimasi mempertimbangkan struktur cluster dan bobot hasil pengambilan sampel.

| Komponen         | Nilai                      |
| ---------------- | -------------------------- |
| Jumlah Responden | 40                         |
| Cluster          | Kelas                      |
| Variabel Bobot   | weight                     |
| Desain Sampling  | Two-Stage Cluster Sampling |

Interpretasi:
Objek survey design berhasil dibentuk menggunakan variabel Kelas sebagai cluster dan weight sebagai bobot sampling. Dengan terbentuknya objek ini, seluruh proses estimasi dilakukan berdasarkan desain Two-Stage Cluster Sampling, sehingga hasil estimasi tidak menganggap seluruh responden memiliki peluang yang sama untuk terpilih.

## 3.3 Estimasi Psychological Well-Being
Tahap selanjutnya adalah melakukan estimasi terhadap rata-rata setiap indikator Psychological Well-Being menggunakan fungsi svymean() pada package survey. Estimasi dilakukan dengan memperhitungkan bobot sampling sehingga menghasilkan nilai rata-rata yang lebih representatif terhadap populasi.

Hasil Estimasi:
| Indikator             |   Mean |     SE |     CI 95%    |   Deff | RSE (%) |
| :-------------------- | -----: | -----: | :-----------: | -----: | ------: |
| Self Acceptance       | 3.5375 | 0.0894 | 3.3623–3.7127 | 0.5812 |    2.53 |
| Positive Relations    | 3.8500 | 0.2925 | 3.2767–4.4233 | 5.8242 |    7.60 |
| Autonomy              | 3.4750 | 0.2488 | 2.9875–3.9625 | 2.4949 |    7.16 |
| Environmental Mastery | 3.6125 | 0.0181 | 3.5770–3.6480 | 0.0335 |    0.50 |
| Purpose in Life       | 3.8750 | 0.2188 | 3.4463–4.3037 | 3.8762 |    5.65 |
| Personal Growth       | 4.1500 | 0.1075 | 3.9393–4.3607 | 0.9277 |    2.59 |

Interpretasi:
Hasil estimasi menunjukkan bahwa seluruh indikator memiliki nilai rata-rata di atas 3, yang mengindikasikan bahwa mahasiswa Program Studi Statistika Universitas Mataram memiliki tingkat Psychological Well-Being yang cukup baik pada seluruh dimensi. Nilai rata-rata tertinggi diperoleh pada indikator Personal Growth sebesar 4,15, sedangkan rata-rata terendah terdapat pada indikator Autonomy sebesar 3,48.
Selain menghasilkan nilai rata-rata, estimasi juga menunjukkan bahwa seluruh indikator memiliki nilai Relative Standard Error (RSE) di bawah 10%, sehingga hasil estimasi dapat dikategorikan memiliki tingkat ketelitian yang baik. Nilai Confidence Interval yang relatif sempit juga menunjukkan bahwa estimasi yang diperoleh cukup stabil, sedangkan nilai Design Effect (Deff) menggambarkanpengaruh desain sampling terhadap varians estimasi pada masing-masing indikator.

## Perhitungan Manual Estimasi

### 1. Estimasi Rata-rata (Weighted Mean)

Rumus:

```math
\bar{Y}=\frac{\sum_{i=1}^{n}w_iY_i}{\sum_{i=1}^{n}w_i}
```

Perhitungan untuk indikator **Self Acceptance** berdasarkan hasil estimasi di RStudio:

```math
\bar{Y}=3.5375
```

Interpretasi:

Nilai estimasi rata-rata sebesar **3,5375** menunjukkan bahwa secara umum tingkat **Self Acceptance** mahasiswa Program Studi Statistika Universitas Mataram berada pada kategori cukup baik. Nilai ini merupakan hasil estimasi berbobot sehingga telah memperhitungkan peluang pemilihan responden pada desain **Two-Stage Cluster Sampling**.

---

### 2. Standard Error (SE)

Rumus:

```math
SE=\sqrt{Var(\bar{Y})}
```

Hasil:

```math
SE=0.089375
```

Interpretasi:

Nilai **Standard Error** sebesar **0,089375** menunjukkan bahwa estimasi rata-rata memiliki tingkat kesalahan yang kecil sehingga hasil estimasi cukup stabil.

---

### 3. Confidence Interval (95%)

Rumus:

```math
CI=\bar{Y}\pm1.96\times SE
```

Perhitungan:

```math
CI=3.5375\pm1.96\times0.089375
```

```math
CI=3.5375\pm0.1752
```

Hasil:

```math
CI=(3.3623,\;3.7127)
```

Interpretasi:

Dengan tingkat kepercayaan sebesar **95%**, rata-rata tingkat **Self Acceptance** mahasiswa diperkirakan berada pada interval **3,3623 hingga 3,7127**.

---

### 4. Design Effect (Deff)

Rumus:

```math
Deff=\frac{Var_{Cluster}}{Var_{SRS}}
```

Hasil:

```math
Deff=0.5812
```

Interpretasi:

Nilai **Design Effect** sebesar **0,5812** menunjukkan bahwa desain **Two-Stage Cluster Sampling** menghasilkan estimasi yang lebih efisien dibandingkan dengan **Simple Random Sampling (SRS)** pada indikator Self Acceptance.

---

### 5. Relative Standard Error (RSE)

Rumus:

```math
RSE=\frac{SE}{\bar{Y}}\times100\%
```

Perhitungan:

```math
RSE=\frac{0.089375}{3.5375}\times100
```

Hasil:

```math
RSE=2.53\%
```

Interpretasi:

Nilai **RSE sebesar 2,53%** menunjukkan bahwa hasil estimasi memiliki tingkat ketelitian yang sangat baik karena berada jauh di bawah batas maksimum **25%**.

---

## Indeks Psychological Well-Being

Untuk mempermudah interpretasi hasil estimasi, skor rata-rata dikonversi menjadi indeks dalam skala 0–100 menggunakan rumus berikut.

Rumus:

```math
Indeks=\frac{\bar{Y}-1}{4}\times100
```

Perhitungan indikator **Self Acceptance**:

```math
Indeks=\frac{3.5375-1}{4}\times100
```

```math
Indeks=63.44
```

Interpretasi:

Nilai indeks sebesar **63,44** menunjukkan bahwa tingkat **Self Acceptance** mahasiswa Program Studi Statistika Universitas Mataram berada pada kategori **cukup baik**. Konversi ke dalam bentuk indeks memudahkan proses perbandingan antarindikator Psychological Well-Being.

### Indeks keseluruhan Psychological Well-Being:
| Indikator             |   Mean | Indeks | Kategori |
| :-------------------- | -----: | -----: | :------- |
| Self Acceptance       | 3.5375 |  63.44 | Tinggi   |
| Positive Relations    | 3.8500 |  71.25 | Tinggi   |
| Autonomy              | 3.4750 |  61.88 | Tinggi   |
| Environmental Mastery | 3.6125 |  65.31 | Tinggi   |
| Purpose in Life       | 3.8750 |  71.88 | Tinggi   |
| Personal Growth       | 4.1500 |  78.75 | Tinggi   |

### Kategori Indeks

| Rentang Indeks | Kategori |
|:--------------:|:---------|
| 0–20 | Sangat Rendah |
| >20–40 | Rendah |
| >40–60 | Sedang |
| >60–80 | Tinggi |
| >80–100 | Sangat Tinggi |

# BAB IV HASIL ANALISIS

Analisis dilakukan berdasarkan hasil estimasi menggunakan desain Two-Stage Cluster Sampling sehingga setiap responden memiliki bobot sesuai peluang pemilihannya. Estimasi tidak hanya menghasilkan nilai rata-rata setiap indikator Psychological Well-Being, tetapi juga ukuran ketelitian estimasi berupa Standard Error (SE), Confidence Interval (95%), Design Effect (Deff), dan Relative Standard Error (RSE). Selanjutnya, rata-rata setiap indikator dikonversi menjadi indeks agar lebih mudah dibandingkan.

#### Ringkasan Hasil Analisis 

| Indikator             |   Mean |     SE |     CI 95%    |   Deff | RSE (%) | Indeks | Kategori |
| :-------------------- | -----: | -----: | :-----------: | -----: | ------: | -----: | :------- |
| Self Acceptance       | 3.5375 | 0.0894 | 3.3623–3.7127 | 0.5812 |    2.53 |  63.44 | Tinggi   |
| Positive Relations    | 3.8500 | 0.2925 | 3.2767–4.4233 | 5.8242 |    7.60 |  71.25 | Tinggi   |
| Autonomy              | 3.4750 | 0.2488 | 2.9875–3.9625 | 2.4949 |    7.16 |  61.88 | Tinggi   |
| Environmental Mastery | 3.6125 | 0.0181 | 3.5770–3.6480 | 0.0335 |    0.50 |  65.31 | Tinggi   |
| Purpose in Life       | 3.8750 | 0.2188 | 3.4463–4.3037 | 3.8762 |    5.65 |  71.88 | Tinggi   |
| Personal Growth       | 4.1500 | 0.1075 | 3.9393–4.3607 | 0.9277 |    2.59 |  78.75 | Tinggi   |

Interpretasi Hasil Analisis
Berdasarkan hasil estimasi, seluruh indikator Psychological Well-Being memperoleh nilai rata-rata di atas 3,4 dengan kategori indeks tinggi. Hal ini menunjukkan bahwa mahasiswa Program Studi Statistika Universitas Mataram memiliki kondisi psychological well-being yang relatif baik pada seluruh dimensi yang diukur.

Indikator Personal Growth memperoleh rata-rata tertinggi yaitu 4,15 dengan indeks 78,75. Hasil tersebut menunjukkan bahwa sebagian besar mahasiswa merasakan adanya perkembangan kemampuan diri selama menjalani perkuliahan, terutama dalam kemampuan berpikir analitis, menyelesaikan masalah, serta kesiapan menghadapi tantangan akademik. Nilai RSE sebesar 2,59% juga menunjukkan bahwa estimasi yang diperoleh memiliki tingkat ketelitian yang sangat baik.

Indikator Purpose in Life memperoleh rata-rata 3,875 dengan indeks 71,88. Hal ini mengindikasikan bahwa mahasiswa telah memiliki tujuan yang cukup jelas dalam menyelesaikan studi serta memiliki keyakinan bahwa pendidikan yang sedang ditempuh dapat membantu mencapai cita-cita di masa depan. Nilai interval kepercayaan yang relatif sempit menunjukkan bahwa hasil estimasi cukup representatif terhadap populasi.

Indikator Positive Relations with Others memperoleh rata-rata 3,85 dengan indeks 71,25. Hasil ini menunjukkan bahwa hubungan sosial mahasiswa dengan teman maupun dosen tergolong baik sehingga mampu menciptakan lingkungan belajar yang saling mendukung. Meskipun demikian, nilai Design Effect sebesar 5,8242 menunjukkan bahwa variasi antarcluster cukup besar sehingga desain sampling memberikan pengaruh terhadap besarnya varians estimasi.

Indikator Environmental Mastery memperoleh rata-rata 3,6125 dengan indeks 65,31. Nilai ini menunjukkan bahwa mahasiswa cukup mampu mengatur waktu, mengelola aktivitas akademik, serta menghadapi berbagai tuntutan selama perkuliahan. Indikator ini memiliki Standard Error paling kecil yaitu 0,0181 serta RSE sebesar 0,50%, sehingga menjadi indikator dengan tingkat ketelitian estimasi terbaik.

Indikator Self Acceptance memperoleh rata-rata 3,5375 dengan indeks 63,44. Hal ini menunjukkan bahwa sebagian besar mahasiswa telah mampu menerima diri sendiri, termasuk menerima hasil akademik yang belum selalu sesuai harapan. Nilai Design Effect kurang dari satu menunjukkan bahwa penggunaan desain Two-Stage Cluster Sampling pada indikator ini lebih efisien dibandingkan Simple Random Sampling.

Sementara itu, indikator Autonomy memperoleh rata-rata 3,475 dengan indeks 61,88, yang merupakan nilai terendah dibandingkan indikator lainnya. Walaupun masih termasuk kategori tinggi, hasil ini menunjukkan bahwa kemampuan mahasiswa dalam mengambil keputusan secara mandiri, menentukan strategi belajar, serta mengelola proses pembelajaran masih dapat ditingkatkan. Nilai RSE sebesar 7,16% menunjukkan bahwa estimasi tetap memiliki tingkat ketelitian yang baik.

Secara keseluruhan, nilai Relative Standard Error seluruh indikator berada di bawah 10%, sehingga seluruh hasil estimasi dapat dikatakan memiliki tingkat presisi yang sangat baik. Selain itu, seluruh interval kepercayaan berada pada rentang yang relatif sempit sehingga estimasi yang dihasilkan cukup representatif dalam menggambarkan kondisi Psychological Well-Being mahasiswa Program Studi Statistika Universitas Mataram.

# BAB V PENUTUP
## Kesimpulan
Penelitian ini berhasil mengkaji tingkat Psychological Well-Being mahasiswa Program Studi Statistika Universitas Mataram menggunakan teknik Two-Stage Cluster Sampling. Berdasarkan hasil estimasi, seluruh dimensi Psychological Well-Being berada pada kategori tinggi, yang menunjukkan bahwa mahasiswa secara umum memiliki kondisi kesejahteraan psikologis yang baik.

Indikator dengan nilai tertinggi adalah Personal Growth (mean = 4,15; indeks = 78,75), yang menunjukkan bahwa mahasiswa merasakan perkembangan kemampuan diri selama menjalani proses perkuliahan. Sebaliknya, indikator Autonomy memperoleh nilai terendah (mean = 3,475; indeks = 61,88), sehingga aspek kemandirian dalam mengambil keputusan dan mengatur proses belajar masih memerlukan perhatian lebih lanjut.

Dari sisi kualitas estimasi, seluruh indikator memiliki nilai Relative Standard Error (RSE) di bawah 10%, sehingga hasil estimasi dapat dinyatakan memiliki tingkat ketelitian yang sangat baik. Nilai Standard Error yang kecil serta interval kepercayaan yang relatif sempit juga menunjukkan bahwa estimasi yang diperoleh cukup stabil dan mampu merepresentasikan kondisi populasi mahasiswa pada cluster yang diteliti.

Penerapan Two-Stage Cluster Sampling memungkinkan penelitian memperoleh estimasi yang mempertimbangkan struktur pengambilan sampel bertingkat melalui pembobotan, sehingga hasil yang diperoleh lebih representatif dibandingkan jika hanya menggunakan rata-rata sampel biasa.

Berdasarkan hasil penelitian, Program Studi Statistika Universitas Mataram disarankan untuk mempertahankan aspek-aspek yang telah menunjukkan hasil baik, terutama dalam pengembangan kemampuan mahasiswa dan pembentukan tujuan akademik. Selain itu, perlu dilakukan upaya untuk meningkatkan aspek Autonomy, misalnya melalui pembelajaran berbasis proyek, penguatan kemampuan pengambilan keputusan, peningkatan kemandirian belajar, serta pendampingan akademik agar mahasiswa semakin percaya diri dalam menentukan strategi belajar dan menghadapi berbagai tantangan selama perkuliahan.

## Saran
Saran

Berdasarkan hasil penelitian mengenai tingkat Psychological Well-Being mahasiswa Program Studi Statistika Universitas Mataram menggunakan teknik Two-Stage Cluster Sampling, beberapa saran yang dapat diberikan adalah sebagai berikut.

1. Bagi Program Studi Statistika Universitas Mataram

Program studi diharapkan dapat mempertahankan indikator yang telah memiliki nilai estimasi tinggi, seperti Personal Growth, melalui penyediaan kegiatan akademik maupun nonakademik yang dapat terus mengembangkan kemampuan berpikir, keterampilan analitis, dan potensi mahasiswa. Selain itu, program studi juga perlu memberikan perhatian lebih pada indikator yang memiliki nilai estimasi relatif lebih rendah, seperti Autonomy dan Self Acceptance, misalnya melalui kegiatan pembinaan akademik, seminar pengembangan diri, mentoring, maupun layanan konseling.

2. Bagi Mahasiswa

Mahasiswa diharapkan dapat meningkatkan kemampuan dalam mengelola proses belajar secara mandiri, mengatur waktu antara aktivitas akademik dan nonakademik, serta mengembangkan sikap menerima diri sendiri terhadap berbagai hasil yang diperoleh selama perkuliahan. Selain itu, mahasiswa juga diharapkan tetap mempertahankan hubungan sosial yang positif dengan teman maupun dosen sebagai salah satu faktor pendukung kesejahteraan psikologis.

3. Bagi Peneliti Selanjutnya

Penelitian selanjutnya disarankan menggunakan cakupan populasi yang lebih luas, misalnya melibatkan seluruh angkatan atau seluruh program studi di Fakultas MIPA Universitas Mataram agar hasil estimasi lebih representatif. Selain itu, jumlah sampel dapat diperbesar sehingga nilai Standard Error dan Relative Standard Error menjadi lebih kecil dan menghasilkan estimasi yang lebih presisi. Penelitian berikutnya juga dapat membandingkan hasil estimasi menggunakan teknik sampling lain, seperti Simple Random Sampling, Stratified Random Sampling, atau Multistage Sampling, sehingga dapat diketahui metode yang memberikan tingkat ketelitian terbaik.
