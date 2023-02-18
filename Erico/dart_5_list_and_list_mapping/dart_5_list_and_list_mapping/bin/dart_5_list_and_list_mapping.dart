// import 'dart:io';

void main(List<String> arguments) {
  List<int> semuaAngka = [];
  List<int> angka = [1, 2, 3];

  semuaAngka.add(2);
  semuaAngka.addAll(angka);
  semuaAngka.insert(2, 12);
  semuaAngka.insertAll(3, [3, 3, 4, 5, 6, 7, 7]);
  semuaAngka.remove(2);
  semuaAngka.removeLast();
  semuaAngka.removeAt(2);
  semuaAngka.removeRange(0, 1);
  semuaAngka.removeWhere((element) => element == 2);
  semuaAngka.sort();

  for (int sa in semuaAngka) {
    print(sa);
  }

  if (semuaAngka.contains(3)) {
    print('ada angka 3');
  } else {
    print('tidak ada angka 3');
  }

  //set is like select distinct, so only unique values are there
  Set<int> mySet;
  mySet = semuaAngka.toSet();

  for (int ms in mySet) {
    print(ms);
  }

  List myData = [
    {'name': 'Yanto', 'gender': 'Male'},
    {'name': 'Yanti', 'gender': 'Female'},
  ];
  print(myData[0]['name']);
}
