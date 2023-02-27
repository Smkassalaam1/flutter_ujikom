import 'package:flutter/material.dart';
import 'package:payroll_mobile/home.dart';
import 'package:payroll_mobile/auth/register.dart';

class AuthLogin extends StatefulWidget {
  const AuthLogin({super.key});

  @override
  State<AuthLogin> createState() => _AuthLoginState();
}

class _AuthLoginState extends State<AuthLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[50],
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView(children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(7)),
            margin: const EdgeInsets.only(top: 20),
            width: 10,
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 4),
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                    'CV PRIMA RASA ABADI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 4),
                  padding: const EdgeInsets.all(5),
                  child: ElevatedButton(
                    child: const Text('Beranda'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ));
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.black, width: 1.4),
              ),
              margin: const EdgeInsets.all(10),
              height: 80,
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.black, width: 1.4),
                ),
                child: const Center(
                  child: Text(
                    'SELAMAT DATANG !',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )),
        ]),
      ),
    );
  }
}
