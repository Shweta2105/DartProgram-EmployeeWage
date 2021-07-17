import 'dart:math';

class empWage {
  static const isFullTime = 1;
  static const isPartTime = 2;
  final int empWagePerHr = 20;
  final int maxWorkingDays = 20;
  final int maxWorkingHrs = 100;

  int empHr = 0;
  int total_Emp_Wage = 0;
  int total_Emp_Hrs = 0;
  int total_Working_Days = 0;

  void Wages() {
    while (total_Emp_Hrs <= maxWorkingHrs &&
        total_Working_Days <= maxWorkingDays) {
      total_Working_Days++;
      var randm = new Random();
      int empCheck = randm.nextInt(3);
      print(empCheck);
      switch (empCheck) {
        case isFullTime:
          {
            print("Employee is present");
            empHr = 8;
          }
          break;
        case isPartTime:
          {
            print("Parttime");
            empHr = 4;
          }
          break;
        default:
          print("Employee is absent");
          empHr = 0;
      }
      int wage = empWagePerHr * empHr;
      total_Emp_Wage += wage;
      print("daily wage= ");
      print(wage);
    }
    print("total Employee wage = ");
    print(total_Emp_Wage);
  }
}

void main(List<String> args) {
  print("Welcome to employee wage calculator ");
  empWage dMart = new empWage();

  dMart.Wages();
}
