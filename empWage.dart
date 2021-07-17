import 'dart:math';

class empWage {
  static const isFullTime = 1;
  static const isPartTime = 2;
  int empWagePerHr = 20;
  int maxWorkingDays = 20;
  int maxWorkingHrs = 100;
  String company = "";

  int empHr = 0;
  int total_Emp_Wage = 0;
  int total_Emp_Hrs = 0;
  int total_Working_Days = 0;
  empWage(
      String company, int empWagePerHr, int maxWorkingDays, int maxWorkingHrs) {
    this.company = company;
    this.empWagePerHr = empWagePerHr;
    this.maxWorkingDays = maxWorkingDays;
    this.maxWorkingHrs = maxWorkingHrs;
  }

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
  empWage dMart = new empWage("dMart", 20, 20, 100);
  empWage StarBazar = new empWage("StarBazar", 15, 25, 80);
  dMart.Wages();
  print("Dmart total wage");
  StarBazar.Wages();
  print("StarBazar total wage");
  //print(dMart);
  //print(StarBazar);
}
