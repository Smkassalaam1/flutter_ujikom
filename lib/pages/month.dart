import 'package:flutter/material.dart';

class MonthPage extends StatelessWidget {
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  MonthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Months'),
      ),
      body: ListView.builder(
        itemCount: months.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(months[index]),
            onTap: () {
              // Do something when the month is tapped
              // For example, navigate to a detail page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MonthDetailPage(month: months[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class MonthDetailPage extends StatelessWidget {
  final String month;

  const MonthDetailPage({super.key, required this.month});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(month),
      ),
      body: Center(
        child: Text('Detail of $month'),
      ),
    );
  }
}
