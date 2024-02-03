// void main(){
//   var nama = 'nice';
//   String tes = 'lol';
//   print('Hello ' + nama + ' ' + tes);
// }
// C#
import 'dart:io';
main(){
  stdout.writeln("What is your name : ?");
  var nama = stdin.readLineSync();
  print('My name is $nama');

  /*
  DASAR DASAR 
  int, double, String, bool, dynamic
  int = integer
  double = float
  String = String tapi deklarasi stdin.readLineSync() tdk bs String karena String? = Null
  bool = True False
  dynamic = variabel dynamic (bisa berubah2 seperti let di js)
  contoh dynamic :
  dynamic tes = 10;
  print(tes); --> 10
  tes = 'amoi';
  print(tes); --> amoi
  null juga sebuah object
  misalnya tes = null;
  print(tes); --> null;


  RAW STRING
  var s1 = 'Bisa';
  var s2 = "Bisa";
  var s3 = 'Tes\' gini pun bisa';
  tapi
  var s4 = r'Raw string meskipun \n pun tidak bisa';
  kejam ^_^

  contoh dikit 
  var age = 35;
  var str = 'My age is : $age';
  print(str); --> My age is 35

  contoh gaje 1:
  var g1 = '''tes
  tes''';
  var g2 = """tes
  """
  print(g1); -> tes
              tes
  output sama aja


  string -> int
  var one = int.parse('1');
  assert(one == 1);
  string -> double
  var koma = double.parse('1.1');
  assert(koma == 1.1);

  output : 
  ya kosong tp gk error
  klo misalkan masukin ('str')
  hasilnya error(panjang banget error nya)

  int -> string   #value 1 dan 3.14..... juga object (dart in a nutshell)
  String tes = 1.toString();
  assert(trs == '1');
  double -> string
  String tes = 3.14159.toStringAsFixed(2);
  assert(tes == '3.14);

  RUNTIMETYPE = tipe dari sebuah variabel / output
  const nomor = 0; #int constant
  print(nomor); -> 0
  print(nomor.runtimeType); -> int

  contoh gaje 2 :       #setelah di test not working
  VAR KOSONG (somehow ini pun jalan)
  int num;
  print(num) -> null

  OPERATOR
  + -> tambah
  - -> kurang
  * -> kali
  / -> bagi
  % -> mod
  int num = 10 + 2; #somehow dynamic
  num = num - 2;    mirip python

  Relasi
  == , !=, >, <, >=, <=

  Unary
  ++num; num++, num+=1, num-=1, num *=5 #copy paste python

  Logical
  && = AND, || = OR

  Bitwise
  & = AND, ^ = XOR, | = OR

  Tambahan
  ?? = if null
  contoh Null Aware :
  class Num{
    int num = 10;
  }
  main(){
    var n = Num();
    int number;
    if (n != null){
      number = n.num ;  ----> cara lain -> number = n?.num;
    }
    print(number); -> 10
  }
  Contoh setan (gaje 3)  :
  main(){
    var n;
    int number;

    number = n?.num ?? 0; #maksudnya jika n itu null maka output nya 0
                          #like wtf, gaje banget
    print(number); -> 0
  }
  void main(){
    int number;
    print(number ??= 100)
  }

  Ternary
  import 'dart:io';
  void main(){
    stdout.writeln("Enter a number : ");
    int x = stdin.readByteSync();
    var result = x % 2 == 0 ? 'Even' : 'Odd';
    print(result);
  }

  CONDITIONAL
  import 'dart:io';
  void main(){
    stdout.writeln("Enter a number : ");
    int x = stdin.readByteSync();
    if (x % 2 == 0){
      print('Even');
    }
    else if (x % 3 == 0){
      print('Odd'); 
    }
    else{
      print('cONFUSED');
    }
    switch(x){
      case 0 :
        print('Even');
        break;
      case 1:
        print('Odd');
        break;
      default :
        print('Confused');
        break;
    }
  
  LOOPING
  void main(){
  int x = 3;
  for (var i = 1; i <= x; i++){
    print(i);
  }
  var arr = [1, 2, 3];
  for (var i in arr){
    print(i);
  }

}

  */

} 