# Jawaban Pertanyaan README Tugas 7

### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

#### Stateless Widget
Stateless widget adalah widget yang tidak memerlukan state yang dapat berubah. Artinya, properti widget ini tidak dapat berubah setelah diatur. Stateless widget bersifat immutable dan biasanya digunakan untuk konten statis.

#### Stateful Widget
Stateful widget adalah widget yang dapat mengubah state-nya selama masa hidupnya. Artinya, widget ini dapat membangun ulang dirinya sendiri berdasarkan perubahan state-nya. Stateful widget bersifat mutable dan digunakan untuk konten dinamis yang dapat berubah sebagai respons terhadap interaksi pengguna atau peristiwa lainnya.

#### Perbedaan
- **Stateless Widget**: Immutable, tidak berubah setelah dibangun, digunakan untuk konten statis.
- **Stateful Widget**: Mutable, dapat berubah selama masa hidupnya, digunakan untuk konten dinamis.

### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

- **MaterialApp**: Widget root dari aplikasi yang mengatur tema dan rute aplikasi.
- **Scaffold**: Menyediakan struktur dasar untuk antarmuka visual aplikasi, termasuk AppBar dan body.
- **AppBar**: App bar dengan desain material yang menampilkan judul dan dapat berisi widget lain seperti ikon atau tindakan.
- **Padding**: Menambahkan padding di sekitar widget.
- **Column**: Menyusun widget anak-anaknya secara vertikal.
- **Row**: Menyusun widget anak-anaknya secara horizontal.
- **Card**: Kartu dengan desain material yang dapat berisi konten dan tindakan tentang satu subjek.
- **Text**: Menampilkan string teks dengan satu gaya.
- **Icon**: Menampilkan ikon grafis.
- **GridView**: Array 2D dari widget yang dapat digulir.
- **InkWell**: Area persegi panjang dari widget Material yang merespons peristiwa sentuhan.
- **SnackBar**: Pesan ringan dengan tindakan opsional yang ditampilkan sebentar di bagian bawah layar.

### 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

#### Fungsi setState()

Fungsi `setState()` digunakan dalam stateful widget untuk memperbarui state widget dan memicu pembangunan ulang pohon widget. Ketika `setState()` dipanggil, Flutter mengetahui bahwa state widget telah berubah dan perlu membangun ulang widget untuk mencerminkan state baru.

#### Variabel yang Terpengaruh oleh setState()
Setiap variabel yang merupakan bagian dari state widget dan digunakan dalam metode build dapat terpengaruh oleh `setState()`. Variabel-variabel ini biasanya didefinisikan dalam kelas `State` dari stateful widget.

### 4. Jelaskan perbedaan antara const dengan final.

- **const**: Digunakan untuk mendefinisikan konstanta waktu kompilasi. Nilainya harus diketahui pada waktu kompilasi dan tidak dapat berubah.
- **final**: Digunakan untuk mendefinisikan konstanta waktu run-time. Nilainya diatur sekali dan tidak dapat diubah, tetapi dapat diatur pada waktu run-time.

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

1. Mengubah warna aplikasi pada main.dart
2. Membuat stateless widget pada main.dart  di class MyHomePage
3. Membuat card yang berisi Nama, NPM, Kelas pada class MyHomePage
4. Membuat button card dengan icon di class baru bernama ItemHomePage
5. Mengintegrasikan InfoCard dan Itemcard agar dapat ditampilkan dengan Widget build()
6. Menambahkan properti `color` ke kelas `ItemHomepage` dan memperbarui widget `ItemCard` untuk menggunakan warna ini.
7. Memodifikasi file `menu.dart` untuk menyertakan properti `color` baru dan memperbarui widget `ItemCard` untuk menggunakan warna ini.
8. Menambahkan penjelasan dan jawaban ke file README untuk mendokumentasikan perbedaan antara stateless dan stateful widget, widget yang digunakan dalam proyek, fungsi `setState()`, dan perbedaan antara `const` dan `final`.