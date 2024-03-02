//Developer: Phala Mathobela(phalamat676@gmail.com)
//This program has several functions in Dart as requested in the assignemt

// This is Function to add two numbers
double addTwo(double n1, double n2) {
  return n1 + n2;
}

// This is a function to subtract two numbers
double subtractTwo(double n1, double n2) {
  return n1 - n2;
}

// This is a function to multiply two numbers
double multiplyTwo(double n1, double n2) {
  return n1 * n2;
}

// This is a function to divide two numbers
double divideTwo(double n1, double n2) {
  if (n2 == 0) {
    throw ArgumentError("You cannot divide by zero");
  }
  return n1 / n2;
}

// TThis is a function to get the length of a string
int stringLength(String str) {
  return str.length;
}

// This is a function to the first element of a list
dynamic getFirstElement(List<dynamic> list) {
  return list.first;
}

  // Below function outputs the results of above functions
void main() {
  print("The sum of two numbers: ${addTwo(5, 5)}"); 
  print("The difference of two numbers: ${subtractTwo(5, 5)}"); 
  print("The product of two numbers: ${multiplyTwo(5, 5)}"); 
  print("The quotient of two numbers: ${divideTwo(5, 5)}"); 
  print("The string length of: ${stringLength("I love Dart")}"); 
  print("The 1st element in the list is: ${getFirstElement([10, 20, 30])}"); 
}

//End of program.