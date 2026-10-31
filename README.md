# 📘 Praktikum 10 – Metode Numerik
## Persamaan Diferensial Biasa (PDB)

Repositori ini berisi implementasi program untuk **Praktikum 10 Mata Kuliah Metode Numerik** yang membahas penyelesaian Persamaan Diferensial Biasa (PDB) menggunakan tiga metode numerik, yaitu **Metode Euler, Metode Heun, dan Metode Runge-Kutta Orde 4 (RK4)**.

Program dibuat menggunakan bahasa pemrograman **GNU Octave** untuk menghitung pendekatan solusi persamaan diferensial serta membandingkan tingkat ketelitian setiap metode berdasarkan galat absolut dan galat relatif terhadap solusi eksak.

---

## 📌 Informasi Praktikum

| Keterangan | Informasi |
|---|---|
| Nama | Rafik Badilah |
| NIM | L0325009 |
| Mata Kuliah | Metode Numerik |
| Praktikum | 10 |
| Materi | Persamaan Diferensial Biasa (PDB) |
| Bahasa Pemrograman | GNU Octave |

---

## 🎯 Tujuan Praktikum

1. Memahami konsep penyelesaian Persamaan Diferensial Biasa menggunakan metode numerik.
2. Mengimplementasikan Metode Euler, Metode Heun, dan Metode Runge-Kutta Orde 4.
3. Menghitung pendekatan solusi persamaan diferensial pada interval tertentu.
4. Membandingkan hasil perhitungan setiap metode dengan solusi eksak.
5. Menganalisis tingkat ketelitian metode berdasarkan galat absolut dan galat relatif.

---

## 📚 Dasar Teori

Persamaan Diferensial Biasa (PDB) merupakan persamaan matematika yang melibatkan suatu fungsi dengan satu atau lebih turunannya terhadap satu variabel bebas.

Pada praktikum ini digunakan tiga metode numerik untuk memperoleh pendekatan solusi PDB.

### 1. Metode Euler

Metode Euler merupakan metode numerik paling sederhana untuk menyelesaikan persamaan diferensial. Metode ini menggunakan nilai turunan pada titik sebelumnya untuk memperkirakan nilai fungsi pada titik berikutnya.

Rumus:

$$
y_{i+1}=y_i+h f(x_i,y_i)
$$

### 2. Metode Heun

Metode Heun merupakan pengembangan dari Metode Euler yang menggunakan pendekatan prediktor dan korektor. Metode ini menghitung dua nilai kemiringan untuk mendapatkan hasil pendekatan yang lebih akurat.

Rumus:

$$
k_1=f(x_i,y_i)
$$

$$
k_2=f(x_i+h,y_i+hk_1)
$$

$$
y_{i+1}=y_i+\frac{h}{2}(k_1+k_2)
$$

### 3. Metode Runge-Kutta Orde 4 (RK4)

Metode Runge-Kutta Orde 4 merupakan metode numerik yang menggunakan empat nilai kemiringan dalam setiap iterasi untuk menghasilkan pendekatan solusi dengan tingkat ketelitian yang lebih tinggi.

Rumus:

$$
k_1=f(x_i,y_i)
$$

$$
k_2=f(x_i+\frac{h}{2},y_i+\frac{hk_1}{2})
$$

$$
k_3=f(x_i+\frac{h}{2},y_i+\frac{hk_2}{2})
$$

$$
k_4=f(x_i+h,y_i+hk_3)
$$

$$
y_{i+1}=y_i+\frac{h}{6}(k_1+2k_2+2k_3+k_4)
$$

---

## 🧮 Persamaan dan Parameter

Persamaan diferensial yang digunakan dalam praktikum:

$$
\frac{dy}{dx}=\frac{4x^3-2x+1}{2+y}
$$

Dengan kondisi awal dan parameter sebagai berikut:

| Parameter | Nilai |
|---|---:|
| Batas bawah (a) | 0 |
| Batas atas (b) | 2 |
| Kondisi awal (y₀) | 1 |
| Jumlah iterasi (N) | 15 |
| Ukuran langkah (h) | 0,133333 |
| Solusi eksak y(2) | 4,0827625303 |

Solusi eksak yang digunakan sebagai pembanding:

$$
y(2)=\sqrt{37}-2
$$

---

## 📂 Struktur Program

Program dibagi menjadi empat bagian utama:

| File | Deskripsi |
|---|---|
| `Euler.m` | Implementasi penyelesaian PDB menggunakan Metode Euler. |
| `Heun.m` | Implementasi penyelesaian PDB menggunakan Metode Heun. |
| `Runge4.m` | Implementasi penyelesaian PDB menggunakan Metode Runge-Kutta Orde 4. |
| `Main.m` | Program utama untuk menjalankan ketiga metode, menghitung solusi eksak, serta membandingkan galat. |

---

## ⚙️ Cara Menjalankan Program

Pastikan GNU Octave sudah terpasang pada komputer.

1. Clone repositori ini atau unduh seluruh file program.
2. Simpan semua file `.m` dalam satu direktori.
3. Buka GNU Octave.
4. Arahkan direktori kerja ke folder program.
5. Jalankan file utama dengan perintah:

```matlab
Main
```

Program akan menampilkan:
- Tabel hasil iterasi Metode Euler.
- Tabel hasil iterasi Metode Heun.
- Tabel hasil iterasi Metode Runge-Kutta Orde 4.
- Nilai solusi eksak.
- Perbandingan galat absolut dan galat relatif dari ketiga metode.

---

## 📊 Hasil Perhitungan

Berdasarkan hasil eksekusi program menggunakan GNU Octave dengan jumlah iterasi sebanyak 15, diperoleh hasil pendekatan sebagai berikut.

**Solusi eksak:**

$$
y(2)=\sqrt{37}-2=4.0827625303
$$

**Perbandingan hasil ketiga metode:**

| Metode | y Aproksimasi | Galat Absolut | Galat Relatif |
|---|---:|---:|---:|
| Euler | 3.8736919390 | 0.2090705913 | 0.0512081194 |
| Heun | 4.0953115456 | 0.0125490153 | 0.0030736579 |
| Runge-Kutta Orde 4 | 4.0827734741 | 0.0000109438 | 0.0000026805 |

### Analisis Hasil

Berdasarkan hasil perhitungan, dapat diketahui bahwa:

1. **Metode Euler** menghasilkan nilai pendekatan sebesar 3.8736919390 dengan galat absolut sebesar 0.2090705913.
2. **Metode Heun** menghasilkan nilai pendekatan sebesar 4.0953115456 dengan galat absolut sebesar 0.0125490153.
3. **Metode Runge-Kutta Orde 4** menghasilkan nilai pendekatan sebesar 4.0827734741 dengan galat absolut sebesar 0.0000109438.

Dari ketiga metode tersebut, Runge-Kutta Orde 4 menghasilkan nilai pendekatan yang paling mendekati solusi eksak, dengan galat absolut dan galat relatif paling kecil.

---

## 📐 Perhitungan Galat

Untuk mengetahui tingkat ketelitian masing-masing metode, dilakukan perhitungan galat terhadap solusi eksak.

### 1. Galat Absolut

$$
E_a=|y_{\text{aproksimasi}}-y_{\text{eksak}}|
$$

### 2. Galat Relatif

$$
E_r=\frac{E_a}{|y_{\text{eksak}}|}
$$

Nilai galat digunakan sebagai indikator untuk membandingkan tingkat ketelitian hasil pendekatan dari setiap metode numerik.

---

## 📝 Kesimpulan

Berdasarkan praktikum yang telah dilakukan, ketiga metode numerik, yaitu Metode Euler, Metode Heun, dan Metode Runge-Kutta Orde 4, dapat digunakan untuk menyelesaikan Persamaan Diferensial Biasa.

Dari hasil perhitungan dengan 15 iterasi, diperoleh bahwa Metode Runge-Kutta Orde 4 memiliki tingkat ketelitian paling tinggi dibandingkan Metode Euler dan Metode Heun. Hal ini dibuktikan dengan nilai galat absolut sebesar 0.0000109438 dan galat relatif sebesar 0.0000026805.

Dengan demikian, pada permasalahan dan parameter yang digunakan dalam praktikum ini, Metode Runge-Kutta Orde 4 memberikan hasil pendekatan yang paling mendekati solusi eksak.

---

**Praktikum 10 – Metode Numerik**  
**Rafik Badilah | L0325009**  
Universitas Sebelas Maret
