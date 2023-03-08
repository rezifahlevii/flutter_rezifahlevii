void main() {
  var testList = [0, 40 , 70, 16];
  print(testList);
  if (testList.isNotEmpty) {
    print('Tulisan ini akan tampil, jika kondisi teks kosong');
    testList.clear();
  }
  print(testList);
}
