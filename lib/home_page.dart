import 'package:flutter/material.dart';
import 'package:flutter_unit_test_final/salary_calculation.dart';  // Make sure the correct import path

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var hourController = TextEditingController();
  int? salary;

  // Create an instance of SalaryCalculation
  SalaryCalculation sc = SalaryCalculation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unit Test"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          //Text("Per hour 500 Dollar"),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              key: Key("hours_input"),
              controller: hourController,
              decoration: InputDecoration(
                  labelText: "Enter working hours",
                  border: OutlineInputBorder()),
            ),
          ),

          SizedBox(height: 20),

          ElevatedButton(
            key: Key("tap"),
            onPressed: () {
              // Get the entered hour from TextField and calculate salary
              int hour = int.parse(hourController.text);

              setState(() {
                // Use the updated calculateSalary method
                salary = sc.calculateSalary(hour);
              });
            },
            child: Text("Calculate Salary"),
          ),

          SizedBox(height: 20),

          if (salary != null) ...[
            Text("Your Salary "),
            Text("\$= " + salary.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50))
          ]
        ],
      ),
    );
  }
}
