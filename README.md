# AFL-3: Unit Testing dengan Pola AAA (Arrange-Act-Assert)

Repository ini berisi solusi untuk tugas AFL-3 yang fokus pada pengujian unit dalam Flutter menggunakan pola AAA (Arrange-Act-Assert).

## Fungsi yang Diuji

Fungsi `OrderCalculator` memeriksa dan menghitung total harga barang dalam pesanan, memeriksa kelayakan diskon, dan menerapkan diskon berdasarkan persentase. Kelas ini berisi tiga metode utama:

1. **`hitungTotal(List<int> harga)`**: Menghitung total harga barang dalam pesanan.
2. **`kelayakDiskon(int total, int batasMinimal)`**: Memeriksa apakah total pesanan memenuhi syarat untuk mendapatkan diskon.
3. **`berlakuDiskon(int total, int persenDiskon)`**: Menerapkan diskon yang diberikan pada total harga pesanan.

### Kasus Uji yang Dijalankan

1. **Test Case 1**: Menguji apakah **`hitungTotal()`** mengembalikan total yang benar dari daftar harga barang.
2. **Test Case 2**: Menguji apakah **`hitungTotal()`** mengembalikan `0` untuk daftar harga kosong.
3. **Test Case 3**: Menguji apakah **`kelayakDiskon()`** mengembalikan `true` jika total pesanan memenuhi syarat diskon.
4. **Test Case 4**: Menguji apakah **`kelayakDiskon()`** mengembalikan `false` jika total pesanan kurang dari batas minimal diskon.
5. **Test Case 5**: Menguji apakah **`berlakuDiskon()`** menerapkan diskon yang benar sesuai persentase.
6. **Test Case 6**: Menguji apakah **`berlakuDiskon()`** melemparkan error jika persentase diskon kurang dari 0 atau lebih dari 100.

### Pola Pengujian yang Digunakan

Kami menggunakan pola **AAA** (Arrange-Act-Assert) untuk menulis unit test:

- **Arrange**: Menyiapkan data input yang dibutuhkan oleh fungsi.
- **Act**: Memanggil fungsi yang akan diuji (misalnya `hitungTotal`, `kelayakDiskon`, atau `berlakuDiskon`) dengan data input yang sudah disiapkan.
- **Assert**: Memeriksa apakah hasil yang dikembalikan oleh fungsi sesuai dengan yang diharapkan menggunakan metode `expect` dari paket `flutter_test`.

### Contoh Kode Pengujian:

Berikut adalah contoh test case untuk **`hitungTotal()`**:

```dart
test('mengembalikan jumlah harga barang dalam Rupiah bulat', () {
  // Arrange
  final daftarHarga = [100000, 155000, 45000];

  // Act
  final total = kalkulator.hitungTotal(daftarHarga);

  // Assert
  expect(total, 300000);
});
```

### Cara Menjalankan Pengujian

Untuk menjalankan pengujian, buka terminal dan jalankan perintah berikut:

```bash
flutter test
```

### Struktur File

- **`order_calculator.dart`**: Berisi kelas **`OrderCalculator`** dengan metode yang diuji.
- **`order_calculator_test.dart`**: Berisi unit test untuk kelas **`OrderCalculator`**.

### Kesimpulan

Dalam tugas ini, kami telah menulis dan menguji beberapa metode dasar dari **`OrderCalculator`** menggunakan pola **AAA**. Pengujian dilakukan untuk memastikan bahwa fungsi **`hitungTotal()`**, **`kelayakDiskon()`**, dan **`berlakuDiskon()`** bekerja dengan benar dalam berbagai kondisi.
