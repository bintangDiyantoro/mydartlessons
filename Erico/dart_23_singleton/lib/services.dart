import 'package:dart_23_singleton/user.dart';

class Services {
  Future<User> getUserdata() async {
    //asuming that we get user data from database and then return it
    return User();
  }
}

class ServicesSingleton {
  static final ServicesSingleton _instans = ServicesSingleton._internal();

  ServicesSingleton._internal();

  // factory: method yang dapat mengembalikan objek yang bertipe sesuai dengan kelasnya (servicesSingleton juga)

  //ketika ServiceSingleton() dipanggil/diinisiasi maka yang dipanggil adalah factory, bukan constructor seperti biasanya
  factory ServicesSingleton(){
    return _instans;
  }


  Future<User> getUserdata() async {
    //asuming that we get user data from database and then return it
    return User();
  }
}
