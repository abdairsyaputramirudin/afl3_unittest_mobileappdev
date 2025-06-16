import 'package:flutter_test/flutter_test.dart';
import 'package:afl3_project/order_calculator.dart';

void main() {
  final kalkulator = OrderCalculator();

  group('hitungTotal()', () {
    test('mengembalikan jumlah harga barang dalam Rupiah bulat', () {
      // Arrange
      final daftarHarga = [100000, 155000, 45000];

      // Act
      final total = kalkulator.hitungTotal(daftarHarga);

      // Assert
      expect(total, 300000);
    });

    test('mengembalikan 0 untuk daftar kosong', () {
      // Arrange
      final daftarHargaKosong = <int>[];

      // Act
      final total = kalkulator.hitungTotal(daftarHargaKosong);

      // Assert
      expect(total, 0);
    });
  });

  group('kelayakanDiskon()', () {
    test('mengembalikan true ketika total sama dengan batas minimal', () {
      // Arrange
      final total = 1000000;
      final batasMinimal = 1000000;

      // Act
      final eligible = kalkulator.kelayakDiskon(total, batasMinimal);

      // Assert
      expect(eligible, true);
    });

    test('mengembalikan false ketika total kurang dari batas minimal', () {
      // Arrange
      final total = 900000;
      final batasMinimal = 1000000;

      // Act
      final eligible = kalkulator.kelayakDiskon(total, batasMinimal);

      // Assert
      expect(eligible, false);
    });
  });

  group('berlakuDiskon()', () {
    test('menerapkan diskon yang benar', () {
      // Arrange
      final total = 2000000;
      final persenDiskon = 10;

      // Act
      final hargaSetelahDiskon = kalkulator.berlakuDiskon(total, persenDiskon);

      // Assert
      expect(hargaSetelahDiskon, 1800000);
    });

    test('melemparkan error untuk diskon negatif', () {
      // Arrange
      final total = 1000000;
      final persenDiskon = -5;

      // Act
      // Eksekusi fungsi dalam bentuk lambda untuk menunda eksekusi
      final action = () => kalkulator.berlakuDiskon(total, persenDiskon);

      // Assert
      expect(action, throwsArgumentError);
    });

    test('melemparkan error untuk diskon lebih dari 100', () {
      // Arrange
      final total = 1000000;
      final persenDiskon = 150;

      // Act
      // Eksekusi fungsi dalam bentuk lambda untuk menunda eksekusi
      final action = () => kalkulator.berlakuDiskon(total, persenDiskon);

      // Assert
      expect(action, throwsArgumentError);
    });
  });
}
