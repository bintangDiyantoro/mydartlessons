void main(List<String> arguments) {
  for (int i = 0; i < 5; i = i + 1) {
    print("Halo! (${(i + 1).toString()} kali)");
  }

  // int i = 0;
  // while (i < 5) {
  //   print("Halo ke-${(i + 1).toString()}");
  //   i++;
  // }

  int x = 5;
  do {
    print("Dududu ke-${x.toString()}");
  } while (x < 5);
}
