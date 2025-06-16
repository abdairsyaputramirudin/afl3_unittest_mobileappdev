# AFL-3: Unit Testing dengan Pola AAA (Arrange-Act-Assert)

Repository ini berisi solusi untuk tugas AFL-3 yang fokus pada pengujian unit dalam Flutter menggunakan pola AAA (Arrange-Act-Assert).

## Fungsi yang Diuji

Fungsi `validateAge` memeriksa apakah umur yang diberikan cukup untuk mengakses sistem. Jika umur kurang dari 18, fungsi ini akan mengembalikan `'Underage'`. Jika umur 18 atau lebih, fungsi ini akan mengembalikan `'Access granted'`.

### Kasus Uji yang Dijalankan

1. **Test Case 1**: Menguji apakah umur 16 tahun menghasilkan output `'Underage'`.
2. **Test Case 2**: Menguji apakah umur 20 tahun menghasilkan output `'Access granted'`.
3. **Test Case 3**: Menguji apakah umur 18 tahun menghasilkan output `'Underage'`.

### Pola Pengujian yang Digunakan

Kami menggunakan pola AAA (Arrange-Act-Assert) untuk menulis unit test:

- **Arrange**: Menyiapkan data input yang dibutuhkan oleh fungsi.
- **Act**: Memanggil fungsi `validateAge` dengan data input yang sudah disiapkan.
- **Assert**: Memeriksa apakah output dari fungsi sesuai dengan yang diharapkan dengan menggunakan metode `expect` dari paket `flutter_test`.

### Cara Menjalankan Pengujian

Untuk menjalankan pengujian, buka terminal dan jalankan perintah berikut:

```bash
flutter test
```
