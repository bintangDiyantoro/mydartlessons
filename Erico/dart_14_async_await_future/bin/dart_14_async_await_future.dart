void main(List<String> arguments) {
  Person p = Person();

  print("job 1");
  print("job 2");
  // await p.getData();
  // print("job 3, nama: ${p.name}");

  p.getData().then((_) => print("job 3, nama: ${p.name}"));
  print("job 4");
}

class Person {
  String name = "tanpa nama";

  Future<void> getData() async {
    await Future.delayed(Duration(seconds: 2));
    name = 'Dudung';
    print("ambil data selesai");
  }
}
