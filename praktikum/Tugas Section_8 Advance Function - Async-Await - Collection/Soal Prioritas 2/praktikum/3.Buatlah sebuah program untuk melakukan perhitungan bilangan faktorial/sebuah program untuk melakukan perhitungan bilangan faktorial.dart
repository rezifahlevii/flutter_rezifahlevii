import 'dart:io';

void main() {
  int faktorial = 5;
  print("Masukkan bilangan bulat : ");
  int? n = int.parse(stdin.readLineSync()!);
  if (n < 0){
    print("Angka yang dimasukkan bukan bilangan bulat");
  } else {
    for (int i = 5; i <= n; i++){
      faktorial *= i;
    }
    print("Hasil faktorial dari " + n.toString() + " adalah " + faktorial.toString());
  }
}