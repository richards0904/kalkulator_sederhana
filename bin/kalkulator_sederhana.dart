import 'dart:io';
import 'kalkulator.dart';

void main(List<String> arguments) {
  Kalkulator kal1 = Kalkulator();
  bool a = true;
  bool b = true;
  while (a == true) {
    try {
      kal1.getAngka1();
      kal1.getAngka2();
      kal1.getOperator();
      kal1.hitung();
      kal1.tampilHasil();
    } catch (e) {
      print("Data yang anda masukan kosong atau salah. Silahkan Ulangi!");
    } finally {
      print("\n");
      stdout.write("Apakah anda ingin melakukan perhitungan lain? [Y/T] : ");
      var ulang = stdin.readLineSync();
      if (ulang!.toUpperCase() == "Y") {
        a = true;
      } else if (ulang.isEmpty) {
        while (b == true) {
          stdout.write("Tolong masukan Y/T : ");
          ulang = stdin.readLineSync();
          if (ulang!.toUpperCase() == "T") {
            a = false;
            b = false;
          } else if (ulang.toUpperCase() == "Y") {
            a = true;
            b = false;
          } else {
            b = true;
          }
        }
      } else if (ulang.toUpperCase() == "T") {
        a = false;
      } else {
        while (b == true) {
          stdout.write("Tolong masukan Y/T : ");
          ulang = stdin.readLineSync();
          if (ulang!.toUpperCase() == "T") {
            a = false;
            b = false;
          } else if (ulang.toUpperCase() == "Y") {
            a = true;
            b = false;
          } else {
            b = true;
          }
        }
      }
    }
  }
}
