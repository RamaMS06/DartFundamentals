/*

  Perulangan merupakan proses dimana mengulang eksekusi satu statement atau lebih
  dari satu block tanpa henti, selama kondisi yang dijadikan acuan terpenuhi,
  ada 2 jenis perulangan didalam Dart yaitu counted loop dan uncounted loop.

  * Counted Loop : Perulangan yang sudah jelas banyaknya perulangan yang diinginkan (loops)
  * Uncounted Loop : Perulangan yang tidak jelas berapa kali harus diulang (while, do while)

*/

void main() {
  // doCountedLoops();
  doUncountedLoops();
}

doCountedLoops() {
  //For Loops (Counted Loop)
  for (var i = 1; i <= 10; i++) {
    // var i = 1 sebagai inisialisasi awal
    // i <= 10 sebagai operasi perbandingan
    // i++ sebagai inisialisasi function increment
    // print(i);
  }

  //For In (Counted Loop)
  final listData = [1, 2, 3, 4, 5];
  for (var i in listData) {
    // Perulangan ini mempersingkat perulangan pada collections
    print(i);
  }

  for (var i = 1; i <= 5; i++) {
    print('* ' * i);
  }

  var s = '';
  for (var i = 1; i <= 5; i++) {
    s += '* ';
    print(s);
  }
}

doUncountedLoops() {
  //Melakukan perulangan dengan mengecek kondisi count <= 10 terlebih dahulu.
  var count = 1;
  while (count <= 10) {
    print('Perulangan ke $count');
    count++;
  }

  /*
    Melakukan statements terlebih dahulu jadi perulangan akan terjadi minimal 1 kali,
    hasil dibawah pasti akan menghasilkan 1 kali perulangan 'Perulangan ke 11'.
  */
  var count2 = 11;
  do {
    print('Perulangan ke $count2');
    count2++;
  } while (count2 <= 10);
}
