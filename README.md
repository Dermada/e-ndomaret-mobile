# Jawaban Pertanyaan README Tugas 8

### 1. Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?

`const` di Flutter digunakan untuk mendeklarasikan nilai konstan yang tidak akan berubah. Keuntungan menggunakan `const` adalah meningkatkan performa aplikasi karena objek yang dideklarasikan sebagai `const` hanya dibuat sekali dan dapat digunakan kembali tanpa perlu membuat ulang. Sebaiknya menggunakan `const` ketika nilai tidak akan berubah selama runtime. Tidak perlu menggunakan `const` jika nilai tersebut akan berubah.

### 2. Jelaskan dan bandingkan penggunaan *Column* dan *Row* pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

*Column* digunakan untuk menata widget secara vertikal, sedangkan *Row* digunakan untuk menata widget secara horizontal. 

Contoh implementasi *Column*:
```dart
Column(
    children: <Widget>[
        Text('Item 1'),
        Text('Item 2'),
        Text('Item 3'),
    ],
)
```

Contoh implementasi *Row*:
```dart
Row(
    children: <Widget>[
        Text('Item 1'),
        Text('Item 2'),
        Text('Item 3'),
    ],
)
```

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman *form* yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

elemen input yang digunakan pada *form* `moodentry_form.dart` adalah:

`TextFormField` untuk input teks. Ada dua `TextFormField` yang terlihat dalam cuplikan kode:
Satu untuk input "Mood".
Satu lagi untuk input "Feelings".
Elemen input ini digunakan untuk mengambil nilai dari pengguna dan memvalidasi input tersebut.

dan untuk elemen yang tidak dipakai diantaranya adalah:
`Checkbox`, `Radio`, `Switch`, `Slider`, dan `DropdownButton`

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Untuk mengatur tema dalam aplikasi Flutter, kita dapat menggunakan `ThemeData` dan mendefinisikan tema di dalam `MaterialApp`. Tema dapat diimplementasikan dengan mendefinisikan warna, font, dan gaya lainnya yang konsisten di seluruh aplikasi. Ya, saya mengimplementasikan tema pada aplikasi yang saya buat untuk menjaga konsistensi tampilan.

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Navigasi dalam aplikasi dengan banyak halaman dapat ditangani menggunakan `Navigator` dan `Route`. `Navigator` digunakan untuk berpindah antar halaman dengan metode seperti `push` dan `pop`.