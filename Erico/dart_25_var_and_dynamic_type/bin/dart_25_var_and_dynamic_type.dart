void main(List<String> arguments) {
  dynamic dyn = 'jajang';
  dyn = 23;

  dyn = Car();

  print((dyn as Car).type);

  var j = 'Jajang'; // not dynamic
  var nama; //dynamic type
  nama = 'Dudung';
  
  print(nama + j);
}

class Car{
  String type = "Wagon";
}
