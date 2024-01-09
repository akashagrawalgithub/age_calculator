import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myAge = '';

  void pickYourDOB() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate != null) {
        yourAge(pickedDate);
      }
    });
  }

  void yourAge(DateTime birth) {
    DateTime now = DateTime.now();
    Duration age = now.difference(birth);
    int years = age.inDays ~/ 365;
    int months = (age.inDays % 365) ~/ 30;
    int days = ((age.inDays % 365) % 30);
    setState(() {
      myAge = '$years years, $months months and $days days';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Age Calculator"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your Age is', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            Text(myAge),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => pickYourDOB(),
              child: const Text('Pick Your Date of Birth'),
            )
          ],
        ),
      ),
    );
  }
}
