void main(List<String> arguments) {
    Kalkulator kal1 = Kalkulator();
    kal1.getAngka1();
    kal1.getAngka2();
    kal1.getOperator();
    kal1.hitung();
    kal1.tampilHasil();
    bool a = true;
    bool b = true;
    while (a == true) {
    stdout.write("Apakah anda ingin melakukan perhitungan lain [Y/T] : ");
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
