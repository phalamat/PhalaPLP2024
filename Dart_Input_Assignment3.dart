//Developer: Phala Mathobela(phalamat676@gmail.com)
//This program takes an input integer from the user and checks if its above, below or equal to number 10.
import 'dart:io';

void main() {
// Prompt the user to enter a number
print("Enter a number:");

// Read the input from the user
String userInput = stdin.readLineSync() ?? "";

// Convert the user input to an integer
int number = int.tryParse(userInput) ?? 0;

// Check the number and print the corresponding message
if (number > 10) {
print("Your number is greater than 10");
} else if (number < 10) {
print("Your number is less than 10");
} else {
print("Your number is equal to 10");
}
}