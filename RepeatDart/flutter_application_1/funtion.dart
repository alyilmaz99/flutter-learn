void main(List<String> args) {
  findSomt();
  int catcher = findAnother(5, 10);
  print(catcher);
  makeSom();
  int catcher2 = makeAnother(10, 20);
  print(catcher2);

  int catcher3 = WithOutParameter(10, 1);

  print(catcher3);
  int cather4 = WithParameterName(name1: 5, name2: 10);
  print(cather4);
}

findSomt() {
  int n = 5;
  int m = 10;
  int somt = (n + m) * 2;
  print(somt);
}

findAnother(int a, int b) {
  int another = 0;
  another = a * b;
  return another;
}

makeSom() => print("asd");

int makeAnother(int n1, int n2) => n1 < n2 ? n2 : n1;

//----------------------------------------------

int WithOutParameter(int number1, int number2, [int number3 = 0]) {
  return number1 + number2 + number3;
}

int WithParameterName({int name1 = 0, int name2 = 0}) {
  return name1 + name2;
}
