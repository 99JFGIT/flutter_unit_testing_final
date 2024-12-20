import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test_final/salary_calculation.dart';

void main() {

  test("Salary Unit Test - 2 hours", () {
    SalaryCalculation sc = SalaryCalculation();
    int salary = sc.calculateSalary(2);   // 2 hours
    expect(salary, 400);  // Expected salary is 400 since 2 <= 40
  });

  group("Group/Multiple Test", () {

    test("Salary Unit Test 1 - 35 hours", () {
      SalaryCalculation sc = SalaryCalculation();
      int salary = sc.calculateSalary(35); // 35 hours
      expect(salary, 400);  // Expected salary is 400 since 35 <= 40
    });

    test("Salary Unit Test 2 - 45 hours", () {
      SalaryCalculation sc = SalaryCalculation();
      int salary = sc.calculateSalary(45); // 45 hours
      expect(salary, 3400); // Expected salary is 400 for the first 40 hours + 600 * 5 for the extra 5 hours
    });

    test("Salary Unit Test 3 - 20 hours", () {
      SalaryCalculation sc = SalaryCalculation();
      int salary = sc.calculateSalary(20); // 20 hours
      expect(salary, 400);  // Expected salary is 400 since 20 <= 40
    });

    test("Salary Unit Test 4 - 50 hours", () {
      SalaryCalculation sc = SalaryCalculation();
      int salary = sc.calculateSalary(50); // 50 hours
      expect(salary, 4400); // Expected salary is 400 for the first 40 hours + 600 * 10 for the extra 10 hours
    });

  });

}
