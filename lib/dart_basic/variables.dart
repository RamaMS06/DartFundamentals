/*

  Variables merupakan sebuah penampung data dan semua TipeData,
  variable ada dua tipe yaitu :
    1. Mutable (dapat diubah / deklarasi ulang) -> var
    2. Immutable (tidak dapat diubah / deklarasi ulang) -> final & const

  * Final vs Const: 

  Final dan Const memiliki kesamaan yaitu tidak dapat di assign ulang,
  pembeda dari kedua variable tersebut adalah final dapat di ubah nilai/value nya
  karena kelas turunan dari final atau object turunan nya tidak bersifat immutable,
  contoh nya pada TipeData Collection (List, Map, Set), nilai final juga dapat ditentukan
  ketika terjadinya proses runtime atau kompilasi seperti TipeData DateTime.
  
  Berbeda dengan const yang nilai dan juga object turunan nya itu bersifat immutable,
  jadi biasanya const digunakan untuk penamaan sebuah object yang sudah jelas isinya.

*/

///Variable Mutable
var name = 'Rama Muhammad S';

///Variable Immutable
final address = 'Bandung';
const age = 20;

///Variable List Immutable
final listFinal = [1, 2, 3];
const listConst = [1, 2, 3];

final date = DateTime(2000);
// const date = DateTime(2000); //Error karena isi date time belum jelas

void main() {
  // address = ''; // Tidak dapat di assign ulang nilai nya
  // age = 24; // Tidak dapat di assign ulang nilai nya

  listFinal.add(4); // Dapat di ubah nilai nya
  // listConst.add(4); // Tidak dapat di ubah nilai nya
}

class Person {
  /*

  * Top Level Class:
  Final dapat digunakan pada top level class sebagai field pada class tersebut,
  dan dapat diubah nilai nya menggunakan constructor pada class nya.

  Const tidak dapat digunakan pada top level class karena akan di deklarasi
  ketika proses run time atau kompilasi terjadi, tetapi const dapat digunakan
  sebagai static variable untuk membuat variable nya global dan dapat
  diakses disemua class atau function.

  * Static biasanya dipakai ketika variable/field dan function/method dibuat untuk global,
  dan dapat diakses disemua class ataupun function

  */

  final String name = '';
  static const String name2 = '';

  static doWork(){}
}
