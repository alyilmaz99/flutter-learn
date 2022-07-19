void main(List<String> args) {
  Set<String> names = Set();

  names.add("a");
  names.add("b");
  names.add("c");
  names.add("a");
  names.add("c");

  bool result = names.remove("a");
  print(result);

  for (String s in names) {
    print(s);
  }

  //listlerde kullanılanların çoğu kullanılıyor.
}
