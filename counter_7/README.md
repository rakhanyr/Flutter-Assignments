# counter_7

A new Flutter project.

# TUGAS 9

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Ya, kita bisa mengambil dan menggunakan JSON tanpa harus membuat modelnya terlebih dahulu. Namun, cara tersebut tidak direkomendasikan karena akan lebih baik menggunakan data yang sudah di-parse ke model dibandingkan dengan menggunakan raw JSON. Penggunaan model akan membuat lebih rapi dan terstruktur.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

TextFormField: field teks untuk input pengguna
Form: container untuk melakukan grouping widget field form
DropdownButtonFormField, menu dropdown atau hamburger menu
Drawer: widget yang berfungsi untuk membuat drawer di sisi kiri layar (untuk navigasi)
TextButton: Menampilkan button dengan text
ListView.builder: berfungsi untuk menampilkan list of children yang scrollable. 
Checkbox = Membuat checkbox dengan event onChange, akan berubah setiap value watchednya berubah.

## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

Fetch data dari API endpoint.
Data yang didapat di-decode menjadi bentuk JSON.
Data dalam bentuk JSON di-convert menjadi bentuk model.
Data dalam bentuk model dapat digunakan pada aplikasi Flutter.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

Membuat model mywatchlist.
Memodifikasi widget drawer.
Membuat page mywatchlist untuk menampilkan seluruh list mywatch.
Membuat page detail mywatchlist.
Menggunakan data mywatchlist pada aplikasi Flutter.



# TUGAS 8

### Navigator.push
Menambahkan Route ke top of stack dari Navigator. Hanya akan menambahkan page pada top of stack saja
### Navigator.pushReplacement
Nantinya akan merubah halaman sekarang dengan halaman baru dengan cara menghapus top of stack saat ini, lalu kemudian akan  menambahkan page yang dituju ke top of stack.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

TextFormField: field teks untuk input pengguna
Form: container untuk melakukan grouping widget field form
DropdownButtonFormField, menu dropdown atau hamburger menu
Card: panel tempat informasi, nampilin card seperti container
Drawer: widget yang berfungsi untuk membuat drawer di sisi kiri layar (untuk navigasi)
TextButton: Menampilkan button dengan text

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).

onChanged: Event terjadi ketika terdapat perubahan pada input
onSaved: Event terjadi ketika user men-save input
onPressed: Event terjadi ketika user menekan button
onClick, onLongPress ,onHover, onFocusChange, onTap, dst

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator menggunakan prinsip Stack, yaitu First in last out. Ketika ingin berpindah halaman, page yang sedang dilihat akan di pop pada stack, kemudian halaman yang akan dimuat akan di-push pada top of stack. Halaman yang ditampilkan ke user merupakan halaman yang berada pada top of stack.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

Membuat file untuk layar form, data, dan model data
Membuat drawer pada semua file yang dibutuhkan
Membuat widget form pada form dart, lalu menyimpan input ke objek model yang telah dibuat 
Lalu menampilkan data dalam bentuk widget card pada halaman Data Budget


# TUGAS 7
### Stateless Widget
Merupakan sebuah widget statis yang tidak dapat diubah atau tidak akan pernah berubah. 

### Stateful Widget
Adalah widget yang dinamis atau dapat berubah. Stateful widget dapat digunakan untuk mengupdate tampilan, merubah warna, menambah jumlah bariis, dll. 

Yang membedakan antara Stateless dan Stateful ialah pada Stateful terdapat Internal State (pemrosesan state atau keadaan baru yang dipicu dari adanya penambahan atau perubahan data). 

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

* `Column()`: semua widget yang ada di dalam akan ditampilkan secara vertikal
* `Center()`: semua widget yang ada di dalam akan diletakkan di bagian tengah
* `AppBar()`: judul sebuah aplikasi atau halaman
* `Scaffold`: landasan halaman
* `Icon()` : memberikan ikon pada sebuah widget
* `FloatingActionButton()`: menampilkan button floating
* `Text()`: menampilkan text dan memberikan style pada text
* `Row()`: semua widget yang ada di dalam akan ditampilkan secara horizontal

## Apa fungsi dari `setState()?` Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi `setState()` adalah bertugas dalam memberitahu framework bahwa ada object yang berubah pada State, kemudian akan melakukan build ulang pada widget tersebut. Variabel yang terdampak dengan fungsi ini dalam program saya adalah variabel `_counter`.

## Jelaskan perbedaan antara `const` dengan `final`.

### Final
Variabel yang menggunakan keyword final diinialisasi pada saat pertama kali digunakan dan hanya akan diset satu kali. Dapat digunakan untuk deklarasi variabel immutable yang nilainya sudah ataupun belum diketahui pada saat waktu kompilasi berjalan. 
### Const
Const dapat digunakan untuk deklarasi variabel immutable yang nilainya bersifat konstan dan harus sudah diketahui pada saat waktu kompilasi berjalan. 

Perbedaan utama ada pada inialisasi nilai (pemberian nilai) dari variabelnya, `const` mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel `const` sudah memiliki nilai, sedangkan `final` tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
* Melakukan styling di background dan primarySwatch
* Membuat condition if-else berdasarkan nilai `_counter` (genap dan ganjil)
* Membuat fungsi `_decrementCounter()` (kebalikan dari increment)
* Membuat widget `FloatingActionButton()` baru untuk decrement counter
