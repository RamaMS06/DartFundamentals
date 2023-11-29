/*

  Function merupakan sebuah blok kode yang digunakan untuk mencegah terjadinya
  redundant code (mengulang kode), dan juga membungkus sebuah kondisi, dan
  pendeklarasian function biasanya menggunakan nama ataupun tidak (anonymous function)

  * Tipe Function
  1. Built-In Function: Function ini sudah dibuatkan oleh Dart itu sendiri seperti print() atau void main()
  2. User-Define: Function ini dibuat oleh user/programmer itu sendiri

*/

//Function Parameter
void sayHello(String name) {
  print('Hello $name');
}

//Function Optioanl Paramter
void showPersonOptional([String? name, String? address]) {
  print('My name is $name and i live in $address');
}

//Function Default Value
void showPersonDefault([String? name = 'Rama', String? address = 'Bandung']) {
  showPersonOptional(name, address);
}

//Function Named Parameter
void showPersonNamed({String? name, String? address}) {
  showPersonDefault(name, address);
}

//Inner Function
void calculateShape(int x, int y) {
  var total = 0;

  doCalculate() {
    total = x + y;
    print(total);
  }

  doCalculate();
}

/*
  * Higher order function
  Sebuah function yang menggunakan function sebagai variable, parameter atau return value, biasanya
  digunakan ketika kita ingin membuat function yang general dan juga bisa digunakan sebagai callback
*/
void formattedRupiah(String value, String Function(String) format) {
  var formatRupiah = format(value);
  print(formatRupiah);
}

//Function Return
String formatting(String value) =>
    value == '1000' ? 'Rp. $value' : 'Tidak dapat di format';

/*
  * Anonymous Function
  Sebuah function yang tidak ada nama functionnya, biasanya disebut lambda
*/
var lowerCaseFunction = (String name) => name.toLowerCase();
var caseFunction = () => print('Anonymous Function');

/*
  * Recursive/Recursion Function
  Merupakan pemanggilan ulang function yang sudah dibuat, biasanya digunakan
  untuk case factorial
*/
int factorial(int value) {
  return value == 1 ? 1 : value * factorial(value - 1); 
}

void main() {
  sayHello('Rama');
  showPersonOptional('Rama', 'Jakarta');
  showPersonDefault();
  showPersonNamed(name: 'Rama', address: 'Tasikmalaya');
  calculateShape(10, 15);
  formattedRupiah('1000', formatting);
  print(factorial(10)); // 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1
}
