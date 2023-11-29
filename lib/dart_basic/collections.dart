/*
  Collection merupakan penampung multiple atau banyak data lebih dari satu,
  dan semua jenis Tipe Data dapat dimasukkan kedalam collection, di Dart 
  terdapat 3 jenis Collections (List, Set, Map) semuanya sama sama dapat
  menyimpan banyak nilai atau data.

  * List
  List digunakan untuk menampung banyak nilai secara berurutan
  dengan default index nya dimulai dari 0.

  referensi:
  https://medium.com/flutter-community/useful-list-methods-in-dart-6e173cac803d

  * Set
  Mirip dengan list tetapi tidak boleh ada nilai yang duplikat (Unik)

  * Map
  Map merupakan tipe data collection yang tidak berurutan, memiliki
  Key dan Value kita dapat memanggilnya menggunakan Key
*/

final List<int> listData = [1, 2, 3, 4];

final Set<int> setData = {1, 2, 3};
final Set<int> setData2 = {4, 5, 6};

final Map<String, String> mapData = {'name': 'Rama', 'address': 'Bandung'};

void main() {
  //List
  listData.add(1); // [1,2,3,4,1]
  listData.remove(1); // [2,3,4,1]
  listData[1]; // 3

  listData.sublist(0, 2); // [2,3]
  listData.sublist(2); // [4,1]

  //Set
  setData.add(4); // {1,2,3,4}
  setData.elementAt(1); // 2
  setData.union(setData2); // {1,2,3,4,5,6}

  //Map
  mapData['name']; // 'Rama'
}
