class BangunRuang {
  double panjang;
  double lebar;
  double tinggi;

  // Constructor untuk menginisialisasi nilai panjang, lebar, dan tinggi
  BangunRuang(this.panjang, this.lebar, this.tinggi);

  // Fungsi untuk menghitung volume kubus
  double volumeKubus() {
    return panjang * panjang * panjang;
  }

  // Fungsi untuk menghitung volume balok
  double volumeBalok() {
    return panjang * lebar * tinggi;
  }
}

void main() {
  // Membuat objek BangunRuang
  BangunRuang kubus = BangunRuang(5, 5, 5);
  BangunRuang balok = BangunRuang(5, 10, 7);

  // Menghitung volume kubus dan balok
  double volumeKubus = kubus.volumeKubus();
  double volumeBalok = balok.volumeBalok();

  // Menampilkan hasil
  print('Volume kubus: $volumeKubus');
  print('Volume balok: $volumeBalok');
}