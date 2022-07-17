void main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    print("test ${i}");
  }
  List nameList = ["first", "second", "third"];
  for (String nameL in nameList) {
    print(nameL);
  }
  int counter = 0;
  while (counter < 5) {
    counter++;
    print("counter ${counter}");
  }
/*
  do {
    //do something
  } while (counter == 5);
*/
  //döngü içerisinde break; direkt döngüden çıkar
  //döngü içerisinde countinue bir atlar
  //diğer dillerde olduğu gibi kullanımı

//isimlendirme ile distaki donguye isim verip break ile onu sonlandırabiliyoruz
  distakidongu:
  for (int i = 0; i < 10; i++) {
    print("distakidongu $i");
    for (int j = 1; j < 6; j++) {
      if (i == 3) {
        break distakidongu;
      }
    }
  }
}
