# counter_7

A new Flutter project.

### Stateless Widget
Merupaka sebuah widget statis yang tidak dapat diubah atau tidak akan pernah berubah. 

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

