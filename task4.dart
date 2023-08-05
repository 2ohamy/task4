import 'dart:io';
import 'dart:math';

void main() {
  //----------task 4----------------
  //----------1---------------------
  print("Enter number of integers: ");
  int n = int.parse(stdin.readLineSync()!);
  int sum = 0;
  int max = -2147483648;
  int min = 2147483647;
  int even = 0;
  int odd = 0;
  int prime = 0;
  // ________________________________اخد الأرقام وحساب النتائج____________________________
  for (int i = 0; i < n; i++) {
    print("Enter number $i: ");
    int num = int.parse(stdin.readLineSync()!);
    sum += num; //حساب المجموع
    //لحساب اكبر رقم واصغر رقم
    if (num > max) {
      max = num;
    }
    if (num < min) {
      min = num;
    }
    //لحساب الارقام الفرديه والزوجيه
    if (num.isEven) {
      even++;
    } else if (num.isOdd) {
      odd++;
    }
    //الاعداد الاوليه
    bool isPrime = true;
    for (int j = 2; j <= num / 2; j++) {
      if (num % j == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime == true) {
      prime++;
    }
  }
  print("Sum: $sum");
  print("Average: ${sum / n}"); //المتوسط
  print("Max: $max");
  print("Min: $min");
  print("Odd numbers: $odd");
  print("Even numbers: $even");
  print("Prime numbers: $prime");
  //------------2---------------

  print("enter your Fname:");
  var FName = stdin.readLineSync();
  if (FName == "") {
    print("please enter your Fname:");
    FName = stdin.readLineSync();
  }
  print("enter your Lname:");
  var LName = stdin.readLineSync();
  if (LName == "") {
    print("please enter your Lname:");
    LName = stdin.readLineSync();
  }
  print("enter your age:");
  var agee = stdin.readLineSync();
  if (agee == "") {
    print("please enter your age:");
    agee = stdin.readLineSync();
  }
  print("enter your phone :");
  var Phone = stdin.readLineSync();
  if (Phone == "") {
    print("please enter your phone :");
    Phone = stdin.readLineSync();
  }
  print("enter your email :");
  var Email = stdin.readLineSync();
  if (Email == "") {
    print("please enter your email :");
    Email = stdin.readLineSync();
  }
  print("enter your password :");
  var Password = stdin.readLineSync();
  if (Password == "") {
    print("please enter your password ");
    Password = stdin.readLineSync();
  }
  print("enter your confirmPassword :");
  var ConfirmPassword = stdin.readLineSync();
  if (ConfirmPassword == "") {
    print("please enter your confirmPassword :");
    ConfirmPassword = stdin.readLineSync();
  }
//Verify the password
  if (Password == ConfirmPassword) {
    //If it matches
    print("register successfully");
  } else {
    //If it does not match
    print("enter your new password :");
    Password = stdin.readLineSync();
    if (Password == "") {
      print("please enter your new password :");
      Password = stdin.readLineSync();
    }
    print("enter your confirmPassword :");
    var ConfirmPassword = stdin.readLineSync();
    if (ConfirmPassword == "") {
      print("enter your new confirmPassword :");
      ConfirmPassword = stdin.readLineSync();
    }
  }
//“login successfully”
  print("enter your email or Phone:");
  var shk = stdin.readLineSync();
  print("enter your password :");
  var pass = stdin.readLineSync();
  if ((shk == Email || shk == Phone) && pass == Password) {
    print("“login successfully”");
    print(FName);
    print("your FName is :$FName");
    print("your LName is :$LName");
    print("your age is :$agee");
    print("your Phone is :$Phone");
    print("your Email is :$Email");
  } else
    print("goout");

  //--------------------3------------------
  int i = 1;
  int k = 1;
  for (; i <= 3; i++) {
    if (i == 1) {
      i = 1;
      k = 1;
    } else {
      i = 5;
      k = 5;
    }
    print(
        "---Table for $i---Table for ${i + 1}---Table for ${i + 2}---Table for ${i + 3}---");
    for (int j = 1; j <= 9; j++) {
      int t1 = (i * j);
      int t2 = (k + 1) * j;
      int t3 = ((k + 2) * j);
      int t4 = ((k + 3) * j);
      print("|   $i x $j = $t1    |" +
          "  ${i + 1} x $j = $t2    |" +
          "   ${k + 2} x $j = ${t3.toString()}    |" +
          "   ${k + 3}x$j = ${t4.toString()}  |");
    }
  }
}
