class Buku {
  int id;
  String judul;
  String penerbit;
  double harga;
  String kategori;
  
  Buku(this.id, this.judul, this.penerbit, this.harga, this.kategori);
}

class TokoBuku {
  List<Buku> _daftarBuku = [];
  
  void tambahBuku(Buku buku) {
    _daftarBuku.add(buku);
  }
  
  List<Buku> semuaBuku() {
    return _daftarBuku;
  }
  
  void hapusBuku(int id) {
    _daftarBuku.removeWhere((buku) => buku.id == id);
  }
}

void main() {
  TokoBuku toko = TokoBuku();
  
  // menambahkan buku
  Buku buku1 = Buku(1, "Pemrograman Dart", "Eduvanz", 20000.0, "Komputer");
  toko.tambahBuku(buku1);
  
  Buku buku2 = Buku(2, "Flutter untuk Pemula", "Eduvanz", 25000.0, "Komputer");
  toko.tambahBuku(buku2);
  
  Buku buku3 = Buku(3, "Kisah Kehidupan", "Gagas Media", 35000.0, "Biografi");
  toko.tambahBuku(buku3);
  
  // menampilkan semua buku
  List<Buku> semuaBuku = toko.semuaBuku();
  for (Buku buku in semuaBuku) {
    print("ID: ${buku.id}, Judul: ${buku.judul}, Penerbit: ${buku.penerbit}, Harga: ${buku.harga}, Kategori: ${buku.kategori}");
  }

  // menghapus buku dengan id 2
  toko.hapusBuku(2);
  
  // menampilkan semua buku setelah buku dengan id 2 dihapus
  semuaBuku = toko.semuaBuku();
  for (Buku buku in semuaBuku) {
    print("ID: ${buku.id}, Judul: ${buku.judul}, Penerbit: ${buku.penerbit}, Harga: ${buku.harga}, Kategori: ${buku.kategori}");
  }
}