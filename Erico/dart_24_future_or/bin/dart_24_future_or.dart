import 'dart:async';

void main(List<String> arguments) async {
  User user = User();
  UserManager um = UserManager(FirebaseStorage());
  print(await um.getUserAge(user));
}

class User {
  // user related data
  int age = 0;
}

class UserManager {
  final IDdataStorage dataStorage;
  UserManager(this.dataStorage);

  void saveUserData(User user, int option) {
    dataStorage.saveData(user);
  }

  FutureOr<int> getUserAge(User user) async {
    return await dataStorage.getUserAge(user);
  }
}

abstract class IDdataStorage {
  void saveData(User user);
  FutureOr<int> getUserAge(User user);
}

class FirebaseStorage implements IDdataStorage {
  @override
  void saveData(User user) {
    //connect to firebase
    //save data
  }
  @override
  Future<int> getUserAge(User user) async {
    await Future.delayed(Duration(seconds: 2));
    return 20;
  }
}

class LocalStorage implements IDdataStorage {
  @override
  void saveData(User user) {
    // connect to local storage
    // save data
  }
  @override
  int getUserAge(User user) {
    return 20;
  }
}
