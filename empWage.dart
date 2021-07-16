import 'dart:math';

void main(List<String> args) {
  const isFullTime = 1;
  const isPartTime = 2;
  const empWagePerHr = 20;
  const maxWorkingDays = 20;

  int empHr = 0;
  int total_Emp_Wage = 0;
  for (int day = 0; day <= maxWorkingDays; day++) {
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


