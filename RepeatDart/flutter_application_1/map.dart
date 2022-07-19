import 'dart:ffi';

void main(List<String> args) {
  Map<String, int> myMaps = {
    "abc": 1,
    "def": 23,
    "ghj": 13,
  };

  print(myMaps);

  print(myMaps["abc"]);
  Map<String, dynamic> human = {
    "name": "asd",
    "age": 12,
    "alive": true,
  };

  print(human["age"]);
  print("****************");
  Map<String, dynamic> human2 = new Map();
  human2["name"] = "asd";

  for (String key in human.keys) {
    print(key);
    print(human[key]);
  }
  print("---------------");
  for (dynamic _value in human.values) {
    print(_value);
  }

  for (var element in human.entries) {
    print("Key: ${element.key}, values: ${element.value} ");
  }

  if (human.containsKey("age")) {
    print("there is age");
  }
}
