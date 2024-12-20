class SalaryCalculation {
  int regularPayment = 400;
  int additionalPayment = 600;

  int calculateSalary(int hour) {
    if (hour <= 40) {
      return regularPayment;
    } else {
      int additionalHours = hour - 40;
      return regularPayment + (additionalHours * additionalPayment);
    }
  }
}
