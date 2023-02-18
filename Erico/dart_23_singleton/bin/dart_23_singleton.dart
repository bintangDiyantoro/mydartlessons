import 'package:dart_23_singleton/services.dart';

void main(List<String> arguments) {
  Services service1 = Services();
  Services service2 = Services();

  ServicesSingleton service3 = ServicesSingleton();
  ServicesSingleton service4 = ServicesSingleton();

  if (service1 == service2) {
    print("sama");
  } else {
    print("beda");
  }

  if (service3 == service4) {
    print("sama");
  } else {
    print("beda");
  }
}
