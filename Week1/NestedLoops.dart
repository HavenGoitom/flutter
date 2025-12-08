import 'dart:io';

void main() {
  print("Right Triangle");
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write('*');
    }
    stdout.writeln();
  }
  print("Inverted Right Triangle");
  for (int i = 0; i < 5; i++) {
    for (int j = 5; j > i; j--) {
      stdout.write('*');
    }
    stdout.writeln();
  }
  print("Triangle");
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5 - i; j++) {
      stdout.write(" ");
    }
    for (int k = 0; k <= 2 * i - 1; k++) {
      stdout.write('*');
    }
    stdout.writeln();
  }
}
