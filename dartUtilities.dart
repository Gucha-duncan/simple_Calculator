import 'dart:io';

//returns sum of two numbers

sumofTwo() {
  print("SUM OF TWO NUMBERS");
  stdout.writeln("Enter the first number:");

  double num1 = double.parse(stdin.readLineSync()!);

  stdout.writeln("Enter Second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  return num1 + num2;
}

//Uses for loop to print out numbers from 1 to 10

// countToTen() {
//   for (int i = 1; i <= 10; i++) {
//     print(i);
//   }
// }

//The program that uses switch case statement. This is a mini calculater

switchCaseProgram() {
  stdout.writeln("WELCOME TO THIS MINI CALCULATOR");

  print("1. Addition");
  print("2. Subtraction");
  print("3. Multiplication");
  print("4. Division");

  print("SELECT OPARATION: \n");

  int selectNumber = int.parse(stdin.readLineSync()!);

  switch (selectNumber) {
    case 1:
      stdout.writeln("ENTER TWO NUMBERS TO GET THEIR SUM:");
      print("Enter first number: ");
      double num1 = double.parse(stdin.readLineSync()!);
      print("Enter second number: ");
      double num2 = double.parse(stdin.readLineSync()!);
      double result = num1 + num2;
      print("The sum is : $result");
      break;

    case 2:
      stdout.writeln("ENTER TWO NUMBERS TO GET THEIR DIFFERENCE:");
      print("Enter first number: ");
      double num1 = double.parse(stdin.readLineSync()!);
      print("Enter second number: ");
      double num2 = double.parse(stdin.readLineSync()!);
      double result = num1 - num2;
      print("The difference is : $result");
      break;

    case 3:
      stdout.writeln("ENTER TWO NUMBERS TO GET THEIR PRODUCT:");
      print("Enter first number: ");
      double num1 = double.parse(stdin.readLineSync()!);
      print("Enter second number: ");
      double num2 = double.parse(stdin.readLineSync()!);
      double result = num1 * num2;
      print("The product is : $result");
      break;

    case 4:
      stdout.writeln("ENTER TWO NUMBERS TO GET THEIR QUOTIENT:");
      print("Enter first number: ");
      double num1 = double.parse(stdin.readLineSync()!);
      print("Enter second number: ");
      double num2 = double.parse(stdin.readLineSync()!);
      double result = num1 / num2;
      print("The quotient is : $result");
      break;

    default:
      print("INVALID CHOICE!!");
  }
}

void main() {
  //challenge 1
  double findSum = sumofTwo();
  print('The sum is $findSum');

  //challenge 2
  // int counDown = countToTen();
  // print(counDown);

  //challenge 3, using switch statements

  double miniCalc = switchCaseProgram();
  print(miniCalc);
}
