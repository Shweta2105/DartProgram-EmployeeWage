import 'dart:math';

void main(List<String> args) {
  const isFullTime = 1;
  const isPartTime = 2;

  int empWagePerHr = 20;
  int empHr;

  var randm = new Random();

  int empCheck = randm.nextInt(3);
  print(empCheck);
  // ignore: unused_element
  //setCategory(isFullTime, isPartTime) {
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
  print(wage);
}
