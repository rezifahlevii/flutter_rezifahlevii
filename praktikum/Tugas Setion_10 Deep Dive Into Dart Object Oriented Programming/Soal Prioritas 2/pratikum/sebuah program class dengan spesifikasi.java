class MathHelper {
    int x, y;
  
    // Constructor
    MathHelper(int x, int y) {
      this.x = x;
      this.y = y;
    }
  
    // Method untuk menghitung kelipatan persekutuan kecil dari x dan y
    int kelipatanPersekutuanKecil() {
      int kpk = x * y;
      for (int i = kpk; i >= 1; i--) {
        if (i % x == 0 && i % y == 0) {
          kpk = i;
        }
      }
      return kpk;
    }
  
    // Method untuk menghitung faktor persekutuan besar dari x dan y
    int faktorPersekutuanBesar() {
      int fpb = 1;
      int smaller = x < y ? x : y;
      for (int i = 1; i <= smaller; i++) {
        if (x % i == 0 && y % i == 0) {
          fpb = i;
        }
      }
      return fpb;
    }
  
    // Method untuk menghitung hasil dari operasi kelipatanPersekutuanKecil() * faktorPersekutuanBesar()
    int hasil() {
      int kpk = kelipatanPersekutuanKecil();
      int fpb = faktorPersekutuanBesar();
      return kpk * fpb;
    }
  }
  
  void main() {
    MathHelper helper = MathHelper(12, 20);
    print("Kelipatan Persekutuan Kecil: ${helper.kelipatanPersekutuanKecil()}"); // Output: Kelipatan Persekutuan Kecil: 60
    print("Faktor Persekutuan Besar: ${helper.faktorPersekutuanBesar()}"); // Output: Faktor Persekutuan Besar: 4
    print("Hasil: ${helper.hasil()}"); // Output: Hasil: 240
  }
  