import 'dart:math';

import './CompanyWage.dart';

class EmpWageBuilder {
  static const ISFULLTIME = 1;
  static const ISPARTTIME = 2;

  int maxHrsPerMonth = 0;
  int empRatePerHr = 0;
  int maxWorkingDays = 0;
  int numOfCompany = 0;
  CompanyWage companyWage1 = new CompanyWage("Dmart", 20, 20, 70);

  String company = "";
  //CompanyWage companyWage1;
  EmpWageBuilder(String company, int empRatePerHr, int maxWorkingDays,
      int maxHrsPerMonth) {
    this.company = company;
    this.empRatePerHr = empRatePerHr;
    this.maxWorkingDays = maxWorkingDays;
    this.maxHrsPerMonth = maxHrsPerMonth;
  }

  void addCompanyEmpwage(String company, int empRatePerHour,
      int numofWorkingDays, int maxHoursPerMonth) {
    var companyEmpWageArray;
    companyEmpWageArray[numOfCompany] =
        new CompanyWage(company, empRatePerHr, maxWorkingDays, maxHrsPerMonth);
    numOfCompany++;
    print(numOfCompany);
  }

  /* void computeEmpwage() {
    for (var i = 0; i < numOfCompany; i++) {
      var companyEmpWageArray;
      companyEmpWageArray[i].setTotalEmpWage(computeEmpWage(companyWage1));
      print(companyWage1);
    }
  }*/

  int computeEmpWage() {
    int empHr = 0, total_Emp_Hrs = 0, total_Working_Days = 0;
    while (total_Emp_Hrs <= maxHrsPerMonth &&
        total_Working_Days <= maxWorkingDays) {
      total_Working_Days++;

      var randm = new Random();
      int empCheck = randm.nextInt(3);

      switch (empCheck) {
        case ISFULLTIME:
          {
            print("Employee is present");
            empHr = 8;
          }
          break;
        case ISPARTTIME:
          {
            print("Parttime");
            empHr = 4;
          }
          break;
        default:
          print("Employee is absent");
          empHr = 0;
      }
      total_Emp_Hrs = total_Emp_Hrs + empHr;
      print(total_Emp_Hrs);
      print("Day: ${total_Working_Days} Emp Hr: ${empHr}");
    }
    return total_Emp_Hrs * empRatePerHr;
  }
}

main(List<String> args) {
  EmpWageBuilder empWage1 = new EmpWageBuilder("DMart ", 28, 20, 50);
  // EmpWageBuilder empWage2 = new EmpWageBuilder("Reliance", 10, 25, 80);

  empWage1.computeEmpWage();
  //empWage2.computeEmpWage();
}
