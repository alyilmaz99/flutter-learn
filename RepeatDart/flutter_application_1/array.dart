void main(List<String> args) {
  int number = 0;

  List<int> numbers = List.filled(5, 2, growable: false);
  print(numbers);
  numbers[0] = 5;
  print(numbers);

  print(numbers.length);

  List<String> names = List.filled(2, "");
  names[0] = 5.toString();
  print(names);

  List mixed = List.filled(5, 0);
  mixed[0] = "string";
  mixed[1] = 1;
  mixed[2] = true;
  print(mixed);
//**************************************************************** */
  List<int> numbers2 = [];

  numbers2.add(1);
  numbers2.add(2);
  numbers2.add(3);
  print(numbers2);

  List<int> numbers3 = [1, 2, 3, 45, 678];
  print(numbers3);

  List<int> numbers22 = List.empty(growable: false);

  print(numbers.first);
  print(numbers.last);
  print(numbers.isEmpty);
  print(numbers.reversed);
  numbers3.removeAt(1);
  print(numbers3);

  //numbers.clear

  if (numbers22.contains(3)) {
    print("has 3");
  }

  numbers22.shuffle();
  print(numbers22);
}
