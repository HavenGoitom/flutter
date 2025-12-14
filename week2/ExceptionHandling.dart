class InvalidAmountException implements Exception {
  String message;
  InvalidAmountException(this.message);
}

void transferMoney(double amount) {
  if (amount <= 0) {
    throw InvalidAmountException("Amount must be greater than 0");
  } else if (amount > 5000) {
    throw FormatException("Amount exceeds transfer limit");
  } else {
    print("Transfer successful");
  }
}

void main() {
  try {
    transferMoney(-100);
  } on FormatException catch (e) {
    print("FormatException: ${e.message}");
  } on InvalidAmountException catch (e) {
    print("InvalidAmountException: $e");
  }
}
