// void main(){
//   var nama = 'nice';
//   String tes = 'lol';
//   print('Hello ' + nama + ' ' + tes);
// }
// C#
// import 'dart:io';  
main(){
  // stdout.writeln("What is your name : ?");
  // var nama = stdin.readLineSync();
  // print('My name is $nama');

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
  for (var i in arr){   #contoh lain
    print(i);
  }
  arr.forEach((n) => print(n));
  void printNum(num){
    print("TEs");
    print(num);
  }
  #contoh pake function
  void main(){
  var arr = [1, 2, 3];
  arr.forEach(printNum);  1,2,3
}
  void printNum(num){
  print("TEs");
  print(num); 
}

  contoh yang while
  void main(){
  int num = 0;

  while(num < 5){
    print(num);
    num += 1;
  }
  // break and continue
  for (var i = 0; i<10; i++){
    if (i>3) break ;
    print(i);   0,1,2,3
  }
  for (var i = 0; i < 10; i++){
    if (i%2 == 0) continue;
    print("Ganjil : $i"); 1,3,5,7,9
  }
  for (var i = 0; i < 10; i++){
    if (i%2 != 0) continue;
    print("Genap : $i");  0,2,4,6,8
  }
}

  COLLECTION
  List
  void main(){
    List nama = ['amoi', 'acui', 'ancuk'];  #List hanya salah satu penamaan, pakai var jg bs
    print(nama.length);
    for (var i in nama){
      print(i);
    }
  }
  void main(){
    List <String> nama =  ['amoi', 'acui', 'abeng'];  //aneh
    nama[2] = 'astaga';   //mengubah indeks ke i dr list
    for (var i in nama){
      print(i);
    }
  }
  void main(){
    List <String> nama = const ['amoi', 'acui', 'abeng'];  //list tdk bs berubah
    nama[2] = 'astaga';   //error
    for (var i in nama){
      print(i);
    }
  }
  void main(){
    List <String> nama =  ['amoi', 'acui', 'abeng'];  
    var nama_1 = nama; // list baru
    nama[2] = 'astaga'; //list awal diubah
    for (var i in nama_1){
      print(i);     //output list 2 jg berubah
    }
  }
  void main(){
    List <String> nama =  ['amoi', 'acui', 'abeng'];  
    var nama_1 = [...nama]; // ANEH BANGET
    nama[2] = 'astaga'; //list nama berubah tetapi nama_1 tidak
    print(nama);
    print(nama_1);
  }
  Collection
  1. Set
  void main(){
    var arr = {'amoi', 'abeng', 'amoi'};  //amoi ke 2 di highlight (tidak error si) 
                                    //  karena set tidak boleh ada yg sama
    print(arr); //output acuman amoi dan abeng
  }
  2. Map
  void main(){
    var arr = {
      //Key :  Value
      'id' : 2525 , //Key jg bisa pake int
      'nama' : 'amoi',
      'pw' : 'astaga',
    };
    print(arr);
    print(arr['pw']);
  }
  void main(){
    var arr = Map();  //instant declare atau apapun la namanya
    arr['tes'] = 'amoi';  //penambahan key dan value
    print(arr);
  }
  */

} 