import 'dart:io';

class Kalkulator {
  var _angka1;
  var _angka2;
  var _operator;
  var _hasil;

  double getAngka1() {
    stdout.write("Masukan Angka 1 : ");
    _angka1 = double.parse(stdin.readLineSync()!);
    return _angka1;
  }

  double getAngka2() {
    stdout.write("Masukan Angka 2 : ");
    _angka2 = double.parse(stdin.readLineSync()!);
    return _angka2;
  }

  double getOperator() {
    print("[1] Tambah");
    print("[2] Kurang");
    print("[3] Kali");
    print("[4] Bagi \n");
    stdout.write("Silahkan pilih salah satu operator diatas: ");
    _operator = double.parse(stdin.readLineSync()!);
    return _operator;
  }

  double hitung() {
    if (_operator == 1) {
      _hasil = _angka1 + _angka2;
    } else if (_operator == 2) {
      _hasil = _angka1 - _angka2;
    } else if (_operator == 3) {
      _hasil = _angka1 * _angka2;
    } else if (_operator == 4) {
      _hasil = _angka1 / _angka2;
    }
    return _hasil;
  }

  void TampilHasil() {
    print("Hasil = $_hasil");
  }
}
