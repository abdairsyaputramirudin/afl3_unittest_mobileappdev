class OrderCalculator {
  // Fungsi ini untuk menghitung total harga barang
  int hitungTotal(List<int> harga) {
    int total = 0;
    for (int item in harga) {
      total += item;
    }
    return total;
  }

  // Fungsi ini untuk memeriksa apakah total belanja layak mendapatkan diskon
  bool kelayakDiskon(int total, int batasMinimal) {
    return total >= batasMinimal;
  }

  // Fungsi ini untuk menerapkan diskon dalam persentase ke total harga
  double berlakuDiskon(int total, int persenDiskon) {
    if (persenDiskon < 0 || persenDiskon > 100) {
      throw ArgumentError('Diskon harus antara 0 dan 100');
    }
    return total - (total * persenDiskon / 100);
  }
}
