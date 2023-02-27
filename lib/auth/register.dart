import 'package:flutter/material.dart';
import 'package:payroll_mobile/auth/login.dart';

class AuthRegister extends StatelessWidget {
  const AuthRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightGreen,
        child: ElevatedButton(
          child: Text('rEGIS'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AuthLogin(),
                ));
          },
        ),
      ),
    );
  }
}
