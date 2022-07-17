void main(List<String> args) {
  int numberName = 10;
  print(numberName);

  numberName = 15;
  print(numberName);

  int converting = 15.5.toInt();
  print(converting);
/*
  int nullSafety; // olduğu için bu hata verir null olarak tutamayız
*/
//eğer null kullanmamız gerekirse

  double? nullName = null;

  print(nullName);

  //hexadecimal kullanım

  int hexaName = 0xAABBCC;
  print(hexaName);
}
