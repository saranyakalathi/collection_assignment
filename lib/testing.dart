import 'package:flutter/material.dart';

class Person with ChangeNotifier {
  Person(this.name, this.age);

  final String name;
  int age;

  // when `notifyListeners` is called, it will invoke
  // any callbacks that have been registered with an instance of this object
  // `addListener`.
  void increaseAge() {
    this.age++;
    notifyListeners();
  }
}

void main() {
  var person = Person('Yohan', 25);

  // `addListener` is a method on the `ChangeNotifier` class,
  // which is mixed-in to the Person class
  person.addListener(() {
    print('value updated!: ${person.age}');
  });
  runApp(
    MaterialApp(
      home: ElevatedButton(
        onPressed: person.increaseAge,
        child: const Icon(Icons.fastfood),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.greenAccent,

        ),
      ),
    ),
  ); // 26
}
