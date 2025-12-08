import 'dart:io';

void userInfo(String name, int age) {
  print("Username: $name \nAge: ${age}");
}

void main() {
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  userInfo(name!, age);
}
