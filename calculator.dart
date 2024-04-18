//this is a simple calculator app for two numbers

//function to prompt the use to enter numbers

import 'dart:io';

enterFirstNum() {
  stdout.writeln("ENTER FIRST NUMBER: ");
  double firstNumber = double.parse(stdin.readLineSync()!);
  return firstNumber;
}

//enter second number

enterSecondNum() {
  stdout.writeln("ENTER SECOND NUMBER: ");
  double secondNumber = double.parse(stdin.readLineSync()!);
  return secondNumber;
}

//function to display all the operations that can be done using this calculator

displayMessage() {
  print("WELCOME TO THIS MINI CALCULATOR");

  print("1. Addition");
  print("2. Subtraction");
  print("3. Multiplication");
  print("4. Division");
}

//this fuction enable continous calculation without restarting the program

continueCalculation() {
  print("DO YOU WANT TO CARRY ANOTHER OPERATION?");
  print('Enter YES to proceed  or NO to stop');
  String choice = stdin.readLineSync()!;

  if (choice == 'YES') {
    carryOutOperation();
  } else
    print("THANK YOU FOR USING OUR MINI CALCULATOR!");
}

carryOutOperation() {
//fuction to select the listed operations

  selectOperation() {
    stdout.writeln("SELECT AN OPERATION:");
    int? selectedOperation = int.parse(stdin.readLineSync()!);
    return selectedOperation;
  }

  switch (selectOperation()) {
    case 1:
      print("YOU ARE CURRENTLY CARRYING OUT ADDITION");
      double num1 = enterFirstNum();
      double num2 = enterSecondNum();
      double result = num1 + num2;
      print("The sum of ${num1} and ${num2} is : ${result}\n");
      //allow the user to keep on carrying calculations once the program has been started
      continueCalculation();

      break;

    case 2:
      print("YOU ARE CURRENTLY CARRYING OUT SUBTRACTION");
      double num1 = enterFirstNum();
      double num2 = enterSecondNum();
      double result = num1 - num2;
      print("The difference of ${num1} and ${num2} is : ${result}");
      continueCalculation();
      break;

    case 3:
      print("YOU ARE CURRENTLY CARRYING OUT MULTIPLICATION");
      double num1 = enterFirstNum();
      double num2 = enterSecondNum();
      double result = num1 * num2;
      print("The prodcut of ${num1} and ${num2} is : ${result}");
      continueCalculation();
      break;

    case 4:
      print("YOU ARE CURRENTLY CARRYING OUT DIVISION");
      double num1 = enterFirstNum();
      double num2 = enterSecondNum();
      double result = num1 / num2;
      print("The quotient of ${num1} and ${num2} is : ${result}");
      continueCalculation();
      break;

    default:
      print("INVALID CHOICE! CHOOSE ONLY THE LISTED OPERANDS");
      //to crestart the program
      continueCalculation();

      break;
  }
}

void main() {
  var message = displayMessage();
  print(message);

  double calCulations = carryOutOperation();
  print(calCulations);
}
