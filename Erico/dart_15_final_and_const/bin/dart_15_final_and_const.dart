// const doesn't need static keyword if it declared on top level
const pi = 3.14;

void main(List<String> arguments) {
  RegularClass rc = RegularClass(3);
  print(rc.number);

  // const value refers to the same object forever
  ConstClass a = ConstClass(5);
  ConstClass b = ConstClass(5);

  print(identical(a, b));
  print(pi);
}

class RegularClass {
  // final is like const in javascript the value can't be changed after its declared, not like static keyword, final value can declared on the instance class.
  final int number;

  RegularClass(this.number) {
    //const doesn't need static keyword if its declared as a local variable inside a method
    const x = 10;
    print("${pi.toString()} ${x.toString()}");
  }
}

class ConstClass {
  final int number;

  //const need static keyword if it declared as an attribute
  static const x = 10;

  const ConstClass(this.number);
}
