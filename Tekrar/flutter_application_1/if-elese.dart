void main(List<String> args) {
  int number1 = 10;
  int number2 = 12;

  if (number1 < number2) {
    number1 += number2;
  } else {
    number1 -= number2;
  }
  print("Number1 1 : ${number1}, Number2: ${number2}");

  int number3 = 22;

  if (number1 == number2) {
    //
  } else if (number2 == number3) {
    //
  } else if (number1 == number3) {
    print("working clear");
  } else {
    ///
    ///
    ///
  }
  if (number2 <= number1 && number3 > number1) {
    //
  } else {
    //
  }

  //SHORT VERS.

  number1 < number2 ? number1 += number2 : number1 -= number2;

  //şeklinde eşitlemede yapılabilir direkt sorgu ile
  number3 = number1 < number2 ? number1 += number2 : number1 -= number2;

  //null kontrolü

  String? name = null;
  String? secondName = "test221";
  String? thirdName;
//eğer name null ise secondName i atar, name null değilse direkt name i atar

  thirdName = name ?? secondName;

  print(thirdName);
}
