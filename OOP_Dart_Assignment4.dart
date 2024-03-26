import 'dart:io';

// Interface
abstract class Transaction {
  void recordTransaction(double amount);
}

// Class representing a bank account
class Account {
  late String accountNumber;
  late double balance;

  Account(this.accountNumber, this.balance);

  // Method to deposit money into the account
  void deposit(double amount) {
    balance += amount;
    print("Deposited $amount. New balance: $balance");
  }

  // Method to withdraw money from the account
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print("Withdrawn $amount. New balance: $balance");
    } else {
      print("Insufficient funds!");
    }
  }
}

// Subclass inheriting from Account and implementing Transaction interface
class SavingsAccount extends Account implements Transaction {
  SavingsAccount(String accountNumber, double balance) : super(accountNumber, balance);

  @override
  void recordTransaction(double amount) {
    print("Recorded transaction for Savings Account: $amount");
  }
}

// Subclass inheriting from Account and implementing Transaction interface
class CheckingAccount extends Account implements Transaction {
  CheckingAccount(String accountNumber, double balance) : super(accountNumber, balance);

  @override
  void recordTransaction(double amount) {
    print("Recorded transaction for Checking Account: $amount");
  }

  // Overriding the withdraw method to include overdraft protection
  @override
  void withdraw(double amount) {
    if (balance + 100 >= amount) { // Assuming overdraft limit of $100
      balance -= amount;
      print("Withdrawn $amount. New balance: $balance");
    } else {
      print("Insufficient funds with overdraft protection!");
    }
  }
}

// Class representing transaction history
class TransactionHistory implements Transaction {
  List<String> transactions = [];

  @override
  void recordTransaction(double amount) {
    transactions.add("Transaction: $amount");
  }

  // Method demonstrating the use of a loop
  void printTransactionHistory() {
    for (String transaction in transactions) {
      print(transaction);
    }
  }
}

void main() {
  // Creating instances of SavingsAccount and CheckingAccount initialized from file data
  SavingsAccount savings = SavingsAccount("SA123", 500.0);
  CheckingAccount checking = CheckingAccount("CA456", 1000.0);

  // Deposit and withdraw operations
  savings.deposit(200.0);
  savings.withdraw(50.0);

  checking.deposit(300.0);
  checking.withdraw(1500.0); // Attempting to withdraw more than balance

  // Creating instance of TransactionHistory and recording transactions
  TransactionHistory history = TransactionHistory();
  history.recordTransaction(100.0);
  history.recordTransaction(50.0);

  // Printing transaction history
  history.printTransactionHistory();
}
