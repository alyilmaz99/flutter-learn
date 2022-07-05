void main(List<String> args) {
  String firstString = "first";
  String secondString = "second";
  int firstInt = 12;

  print(firstString + " " + secondString);
  print("$firstString , $secondString, $firstInt");
  print("First string length: " + firstString.length.toString());
  print("Another usage: ${firstString.length}");

  int secondInt = 15;

  print("Sum : ${firstInt + secondInt}");

  // pref settings -> word wrap for wrapping for column
  // for example :
  print(
      "54004601706688015400460170668801540046017066880154004601706688015400460170668801540046017066880154004601706688015400460170668801540046017066880154004601706688015400460170668801");
}
