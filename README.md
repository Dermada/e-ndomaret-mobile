# Jawaban Pertanyaan README Tugas 8

### 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

Kita perlu membuat model untuk mempermudah proses pengambilan dan pengiriman data JSON karena model berfungsi sebagai representasi struktur data yang digunakan dalam aplikasi. Model memungkinkan kita untuk mengonversi data JSON menjadi objek yang dapat dimanfaatkan dalam kode, serta memastikan konsistensi data. Tanpa model, kita mungkin menghadapi kesulitan dalam memetakan data JSON ke dalam struktur aplikasi, yang dapat menyebabkan error atau data tidak terbaca dengan benar.

### 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini

Library `http` digunakan untuk melakukan permintaan HTTP seperti GET, POST, PUT, dan DELETE dari aplikasi Flutter ke server. Fungsi utama dari library ini adalah untuk memungkinkan aplikasi berkomunikasi dengan API atau layanan web untuk mengambil atau mengirim data. Dalam tugas ini, library `http` digunakan untuk mengambil data dari server dan menampilkannya di aplikasi, serta mengirim data dari aplikasi ke server.

### 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

`CookieRequest` adalah sebuah class yang digunakan untuk menangani permintaan HTTP yang membutuhkan penyimpanan dan pengelolaan cookie. Fungsi utama dari `CookieRequest` adalah untuk mempertahankan sesi pengguna dengan menyimpan cookie yang diterima dari server dan mengirimkannya kembali pada permintaan berikutnya. Instance `CookieRequest` perlu dibagikan ke semua komponen di aplikasi Flutter agar semua permintaan HTTP yang memerlukan autentikasi dapat menggunakan cookie yang sama, sehingga sesi pengguna tetap konsisten di seluruh aplikasi.

### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

Mekanisme pengiriman data pada Flutter dimulai dari input pengguna melalui widget seperti `TextFormField`. Data yang diinput kemudian dikirim ke server menggunakan permintaan HTTP (misalnya POST) melalui library `http` atau `CookieRequest`. Server menerima data, memprosesnya, dan mengirimkan respons kembali ke aplikasi. Aplikasi kemudian menerima respons tersebut, mengonversi data JSON menjadi objek model, dan menampilkan data pada UI menggunakan widget seperti `ListView` atau `Text`.

### 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Mekanisme autentikasi dimulai dari input data akun pengguna pada Flutter melalui form login atau register. Data ini kemudian dikirim ke server Django menggunakan permintaan HTTP POST. Django memproses data, memverifikasi kredensial, dan jika valid, mengirimkan respons yang berisi token atau cookie sesi. Flutter menerima respons ini dan menyimpan token atau cookie untuk digunakan pada permintaan berikutnya. Saat logout, Flutter mengirim permintaan ke server untuk menghapus sesi, dan server menghapus token atau cookie yang terkait. Setelah autentikasi berhasil, Flutter menavigasi pengguna ke halaman utama atau menu aplikasi.

### 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

- Menambahkan app baru pada django yaitu authentication
- konfigurasi `INSTALLED_APPS`, `ALLOWED_HOSTS`, dan menginstal library yang dibutuhkan
-buat method login, register, dan logout pada `views.py` authentication
- Menggunakan package tim asdos untuk integrasi app auth
- membuat model custom menggunakan quicktype
- menginstal package http untuk fetch data dari django ke flutter