import 'dart:io';

void main() {
  stdout.write("Enter number: ");
  int num = int.parse(stdin.readLineSync()!);
  if (num % 3 == 0 && num % 5 == 0) {
    print("FizzBuzz");
  } else if (num % 3 == 0) {
    print("Fizz");
  } else if (num % 5 == 0) {
    print("Buzz");
  } else {
    print(num);
  }
}
