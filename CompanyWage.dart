class CompanyWage {
  dynamic company;
  dynamic empRatePerHr;
  dynamic numOfWorkingDays;
  dynamic maxHrsPerMonth;

  int totalEmpWage = 0;
  CompanyWage.CopyConstructor() {}

  CompanyWage(dynamic company, dynamic empRatePerHr, dynamic numOfWorkingDays,
      dynamic maxHrsPerMonth) {
    this.company = company;
    this.empRatePerHr = empRatePerHr;
    this.numOfWorkingDays = numOfWorkingDays;
    this.maxHrsPerMonth = maxHrsPerMonth;
  }

  void setTotalEmpWage(int totalEmpWage) {
    this.totalEmpWage = totalEmpWage;
  }

  String toString() {
    return "Total Emp Wage for Company: ${company} is: ${totalEmpWage}";
  }
}

/*
  CompanyWage company = CompanyWage("dmart", 20, 15, 80);
  print(company);
}*/
