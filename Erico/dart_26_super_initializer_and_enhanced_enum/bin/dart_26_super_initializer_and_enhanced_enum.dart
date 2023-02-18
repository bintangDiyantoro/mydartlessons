void main(List<String> arguments) {
  Administrator a = Administrator(1, "yanto",
      fullname: "diyantoro",
      age: 23,
      administratorType: AdministratorType.generalAdministrator);

  print(a.administratorType);
  print(a.fullname);


  MyAuth auth = MyAuth.invalidPassword;

  print("Auth name: ${auth.name}, code: ${auth.code}, description: ${auth.desc}");
  
}

enum AdministratorType {
  generalAdministrator,
  securityAdministrator,
  superAdministrator
}

class User {
  int id, age;
  String username, fullname;

  User(this.id, this.username, {this.fullname = 'Peter', required this.age});
}

// SUPER INITIALIZER
class Administrator extends User {
  AdministratorType administratorType;

  Administrator(super.id, super.username,
      {super.fullname, required super.age, required this.administratorType});
}

// ENHANCED ENUM
enum MyAuth {
  invalidPassword(200, 'Password salah'),
  invalisUsername(300, 'Username tidak ada');

  final int code;
  final String desc;

  const MyAuth(this.code, this.desc); // harus ada const-nya
}
