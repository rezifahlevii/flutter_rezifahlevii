class Hewan {
  double berat;
  
  Hewan(this.berat);
}

class Mobil {
  List<Hewan> muatan = [];

  void tambahHewan(Hewan hewan) {
    muatan.add(hewan);
  }
  
  double totalMuatan() {
    double total = 0;
    for (var hewan in muatan) {
      total += hewan.berat;
    }
    return total;
  }
}